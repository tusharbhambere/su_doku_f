import 'dart:developer' as log;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:su_doku_f/Menu/a_Play/domain/sudoku_model.dart';
import 'package:su_doku_f/core/Audio/shared/provider.dart';
import 'package:sudoku_solver_generator/sudoku_solver_generator.dart';
import 'package:vibration/vibration.dart';

import '../shared/provider.dart';

class SudokuNotifier extends StateNotifier<List<List<CellModel>>> {
  final List<AnimationController> scaleAnimationControllers;
  final Ref ref;
  SudokuNotifier(
    this.scaleAnimationControllers,
    this.ref,
  ) : super([]) {
    startNewGame();
  }
//Start Game
  void startNewGame() {
    List<List<int>> board = SudokuGenerator(emptySquares: 50).newSudoku;
    for (var row = 0; row < board.length; row++) {
      List<CellModel> cellModel = List.generate(9, (column) {
        int val = board[row][column];
        return CellModel(
          positionModel: PositionModel(x: column, y: row),
          value: val,
          prefill: val != 0,
        );
      });
      state = [...state, cellModel];
      onReady();
    }
  }

  void onReady() {
    Random rand = Random();

    for (int i = 0; i < scaleAnimationControllers.length; i++) {
      Future.delayed(Duration(milliseconds: rand.nextInt(1000)), () {
        scaleAnimationControllers[i].reset();
        scaleAnimationControllers[i].forward();
      });
    }

    Future.delayed(const Duration(milliseconds: 1000), () {
      ref.read(generatedProvider.notifier).update((state) => true);
    });
  }

  //Cell Remove Markup
  void removeMarkup(
    int x,
    int y,
    int value,
  ) {
    CellModel model = state[y][x].copyWith(
        markup:
            state[y][x].markup.where((element) => element != value).toList());
    state = [
      ...state.take(y),
      [
        ...state[y].take(x),
        model,
        ...state[y].skip(x + 1),
      ],
      ...state.skip(y + 1)
    ];
  }

//MARKUP
  void addNumber(int x, int y, int selectedNumber) {
    CellModel model =
        state[y][x].copyWith(markup: [...state[y][x].markup, selectedNumber]);
    print(model);
    state = [
      ...state.take(y),
      [
        ...state[y].take(x),
        model,
        ...state[y].skip(x + 1),
      ],
      ...state.skip(y + 1)
    ];
  }

  //Add Value Number
  void addValue(int x, int y, int selectedNumber, BuildContext context) async {
    CellModel model = state[y][x].copyWith(value: selectedNumber);
    state = [
      ...state.take(y),
      [
        ...state[y].take(x),
        model,
        ...state[y].skip(x + 1),
      ],
      ...state.skip(y + 1)
    ];
    // log.log(fakeDate.toString());
    if (cellInvalid(
      // fakeDate[y][x],
      x,
      y,
    )) {
      makeCellEmpty(x, y);
      final audio = ref.watch(audioServiceProvider);
      await audio.playFail();
      var vibration = await Vibration.hasVibrator();

      if (vibration != null) {
        if (vibration) {
          await Vibration.vibrate(duration: 200, amplitude: 250);
        } else {}
      } else {}
      showDialog(
        context: context,
        barrierColor: Colors.transparent,
        builder: (context) {
          return const Center(child: Text('WRONG'));
        },
      );
    } else {
      await ref.read(audioServiceProvider).playOperation();

      // state = [
      //   ...state.take(y),
      //   [
      //     ...state[y].take(x),
      //     model,
      //     ...state[y].skip(x + 1),
      //   ],
      //   ...state.skip(y + 1)
      // ];
    }
  }

//Make Cell Empty
  void makeCellEmpty(int x, int y) {
    CellModel model = state[y][x].copyWith(value: 0);
    state = [
      ...state.take(y),
      [
        ...state[y].take(x),
        model,
        ...state[y].skip(x + 1),
      ],
      ...state.skip(y + 1)
    ];
  }

//Value validet
  bool cellInvalid(int x, int y) {
    CellModel cell = state[y][x];

    if (cell.prefill) {
      return false;
    }

    // PositionModel pos = cell.positionModel;
    int value = cell.value;

    // check segment
    List<CellModel> segment = [];
    int rowStart = y - (y % 3);
    int columnStart = x - (x % 3);

    for (int row = 0; row < 3; row++) {
      for (int column = 0; column < 3; column++) {
        segment.add(state[row + rowStart][column + columnStart]);
      }
    }

    if (valueRepeats(segment, value)) {
      log.log('segment');
      return true;
    }

    // check row
    List<CellModel> row = List.empty(growable: true);
    for (int column = 0; column < 9; column++) {
      row.add(state[y][column]);
    }

    if (valueRepeats(row, value)) {
      log.log('row');

      return true;
    }

    // check column
    List<CellModel> column = List.empty(growable: true);
    for (int row = 0; row < 9; row++) {
      column.add(state[row][x]);
    }

    if (valueRepeats(column, value)) {
      log.log('column');

      return true;
    }

    return false;
  }

  bool valueRepeats(List<CellModel> cells, int value) {
    Set<int> seenValues = {};
    for (int i = 0; i < cells.length; i++) {
      int curVal = cells[i].value;

      if (seenValues.contains(curVal) && curVal == value) {
        return true;
      }

      seenValues.add(curVal);
    }

    return false;
  }
}
