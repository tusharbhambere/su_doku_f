import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:su_doku_f/core/Audio/shared/provider.dart';
import 'package:su_doku_f/core/Theme/themed.dart';

import '../../domain/sudoku_model.dart';
import '../../shared/provider.dart';

class BuildNumberRow extends HookConsumerWidget {
  final int index;
  final List<List<CellModel>> cellModel;
  final List<AnimationController> scaleAnimationControllers;
  const BuildNumberRow(
      {super.key,
      required this.index,
      required this.cellModel,
      required this.scaleAnimationControllers});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedNumber = ref.watch(selectedNumberProvider);
    int selectedIndex = selectedNumber - 1;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(300),
          color: selectedIndex == index
              ? AppTheme.of(context).primary
              : Theme.of(context).canvasColor,
        ),
        child: OutlinedButton(
          onPressed: () {
            numberPressButton(ref, index, selectedNumber, cellModel,
                scaleAnimationControllers);
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(300.0))),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: Text(
            (index == 9) ? "X" : (index + 1).toString(),
            style: TextStyle(
              color: selectedIndex == index
                  ? Theme.of(context).canvasColor
                  : Theme.of(context).textTheme.bodyMedium!.color!,
            ),
          ),
        ),
      ),
    );
  }
}

void numberPressButton(
    WidgetRef ref,
    int index,
    int selectedNumber,
    List<List<CellModel>> cellModel,
    List<AnimationController> scaleAnimationControllers) async {
  if (selectedNumber == index + 1) {
    ref.read(selectedNumberProvider.notifier).update((state) => -1);
  } else {
    ref.read(selectedNumberProvider.notifier).update((state) => index + 1);
    await ref.read(audioServiceProvider).playInput();
    Random rand = Random();
    for (int x = 0; x < 9; x++) {
      for (int y = 0; y < 9; y++) {
        if (cellModel[y][x].value == selectedNumber) {
          AnimationController animation = scaleAnimationControllers[y * 9 + x];
          animation.reset();
          Future.delayed(Duration(milliseconds: rand.nextInt(200)), () {
            animation.reset();
            animation.forward();
          });
        }
      }
    }
  }
}
