import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:su_doku_f/Menu/a_Play/application/counter_notifier.dart';

import '../application/sudoko_notifier.dart';
import '../domain/sudoku_model.dart';

final sudokoProvider = StateNotifierProvider.autoDispose
    .family<SudokuNotifier, List<List<CellModel>>, List<AnimationController>>(
        (ref, scaleAnimationController) {
  return SudokuNotifier(scaleAnimationController, ref);
});
final coundDownProvider =
    StateNotifierProvider.autoDispose<CoundDownNotifier, int>((ref) {
  return CoundDownNotifier(ref);
});

final selectedNumberProvider = StateProvider<int>((ref) {
  return -1;
});
final validationWrongCellsProvider = StateProvider<List<PositionModel>>((ref) {
  return [];
});
final markingProvider = StateProvider<bool>((ref) {
  return false;
});
final highLightedProvider = StateProvider<bool>((ref) {
  return false;
});
final generatedProvider = StateProvider<bool>((ref) {
  return false;
});
