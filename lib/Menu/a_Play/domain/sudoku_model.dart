import 'package:freezed_annotation/freezed_annotation.dart';

part 'sudoku_model.freezed.dart';

@freezed
class SudokuModel with _$SudokuModel {
  const factory SudokuModel({
    required List<List<CellModel>> game,
    required int time,
  }) = _SudokuModel;
}

@freezed
class CellModel with _$CellModel {
  const factory CellModel({
    required PositionModel positionModel,
    required int value,
    required bool prefill,
    @Default([]) List<int> markup,
  }) = _CellModel;
}

@freezed
class PositionModel with _$PositionModel {
  const factory PositionModel({
    required int x,
    required int y,
  }) = _PositionModel;
}

@freezed
class MoveModel with _$MoveModel {
  const factory MoveModel(
      {required int value,
      required List<int> markup,
      required int x,
      required int y}) = _MoveModel;
}
