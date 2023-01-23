// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sudoku_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SudokuModel {
  List<List<CellModel>> get game => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SudokuModelCopyWith<SudokuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SudokuModelCopyWith<$Res> {
  factory $SudokuModelCopyWith(
          SudokuModel value, $Res Function(SudokuModel) then) =
      _$SudokuModelCopyWithImpl<$Res, SudokuModel>;
  @useResult
  $Res call({List<List<CellModel>> game, int time});
}

/// @nodoc
class _$SudokuModelCopyWithImpl<$Res, $Val extends SudokuModel>
    implements $SudokuModelCopyWith<$Res> {
  _$SudokuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as List<List<CellModel>>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SudokuModelCopyWith<$Res>
    implements $SudokuModelCopyWith<$Res> {
  factory _$$_SudokuModelCopyWith(
          _$_SudokuModel value, $Res Function(_$_SudokuModel) then) =
      __$$_SudokuModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<CellModel>> game, int time});
}

/// @nodoc
class __$$_SudokuModelCopyWithImpl<$Res>
    extends _$SudokuModelCopyWithImpl<$Res, _$_SudokuModel>
    implements _$$_SudokuModelCopyWith<$Res> {
  __$$_SudokuModelCopyWithImpl(
      _$_SudokuModel _value, $Res Function(_$_SudokuModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? time = null,
  }) {
    return _then(_$_SudokuModel(
      game: null == game
          ? _value._game
          : game // ignore: cast_nullable_to_non_nullable
              as List<List<CellModel>>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SudokuModel implements _SudokuModel {
  const _$_SudokuModel(
      {required final List<List<CellModel>> game, required this.time})
      : _game = game;

  final List<List<CellModel>> _game;
  @override
  List<List<CellModel>> get game {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_game);
  }

  @override
  final int time;

  @override
  String toString() {
    return 'SudokuModel(game: $game, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SudokuModel &&
            const DeepCollectionEquality().equals(other._game, _game) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_game), time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SudokuModelCopyWith<_$_SudokuModel> get copyWith =>
      __$$_SudokuModelCopyWithImpl<_$_SudokuModel>(this, _$identity);
}

abstract class _SudokuModel implements SudokuModel {
  const factory _SudokuModel(
      {required final List<List<CellModel>> game,
      required final int time}) = _$_SudokuModel;

  @override
  List<List<CellModel>> get game;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$_SudokuModelCopyWith<_$_SudokuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CellModel {
  PositionModel get positionModel => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  bool get prefill => throw _privateConstructorUsedError;
  List<int> get markup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CellModelCopyWith<CellModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellModelCopyWith<$Res> {
  factory $CellModelCopyWith(CellModel value, $Res Function(CellModel) then) =
      _$CellModelCopyWithImpl<$Res, CellModel>;
  @useResult
  $Res call(
      {PositionModel positionModel, int value, bool prefill, List<int> markup});

  $PositionModelCopyWith<$Res> get positionModel;
}

/// @nodoc
class _$CellModelCopyWithImpl<$Res, $Val extends CellModel>
    implements $CellModelCopyWith<$Res> {
  _$CellModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionModel = null,
    Object? value = null,
    Object? prefill = null,
    Object? markup = null,
  }) {
    return _then(_value.copyWith(
      positionModel: null == positionModel
          ? _value.positionModel
          : positionModel // ignore: cast_nullable_to_non_nullable
              as PositionModel,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      prefill: null == prefill
          ? _value.prefill
          : prefill // ignore: cast_nullable_to_non_nullable
              as bool,
      markup: null == markup
          ? _value.markup
          : markup // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionModelCopyWith<$Res> get positionModel {
    return $PositionModelCopyWith<$Res>(_value.positionModel, (value) {
      return _then(_value.copyWith(positionModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CellModelCopyWith<$Res> implements $CellModelCopyWith<$Res> {
  factory _$$_CellModelCopyWith(
          _$_CellModel value, $Res Function(_$_CellModel) then) =
      __$$_CellModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PositionModel positionModel, int value, bool prefill, List<int> markup});

  @override
  $PositionModelCopyWith<$Res> get positionModel;
}

/// @nodoc
class __$$_CellModelCopyWithImpl<$Res>
    extends _$CellModelCopyWithImpl<$Res, _$_CellModel>
    implements _$$_CellModelCopyWith<$Res> {
  __$$_CellModelCopyWithImpl(
      _$_CellModel _value, $Res Function(_$_CellModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionModel = null,
    Object? value = null,
    Object? prefill = null,
    Object? markup = null,
  }) {
    return _then(_$_CellModel(
      positionModel: null == positionModel
          ? _value.positionModel
          : positionModel // ignore: cast_nullable_to_non_nullable
              as PositionModel,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      prefill: null == prefill
          ? _value.prefill
          : prefill // ignore: cast_nullable_to_non_nullable
              as bool,
      markup: null == markup
          ? _value._markup
          : markup // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_CellModel implements _CellModel {
  const _$_CellModel(
      {required this.positionModel,
      required this.value,
      required this.prefill,
      final List<int> markup = const []})
      : _markup = markup;

  @override
  final PositionModel positionModel;
  @override
  final int value;
  @override
  final bool prefill;
  final List<int> _markup;
  @override
  @JsonKey()
  List<int> get markup {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markup);
  }

  @override
  String toString() {
    return 'CellModel(positionModel: $positionModel, value: $value, prefill: $prefill, markup: $markup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CellModel &&
            (identical(other.positionModel, positionModel) ||
                other.positionModel == positionModel) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.prefill, prefill) || other.prefill == prefill) &&
            const DeepCollectionEquality().equals(other._markup, _markup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, positionModel, value, prefill,
      const DeepCollectionEquality().hash(_markup));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CellModelCopyWith<_$_CellModel> get copyWith =>
      __$$_CellModelCopyWithImpl<_$_CellModel>(this, _$identity);
}

abstract class _CellModel implements CellModel {
  const factory _CellModel(
      {required final PositionModel positionModel,
      required final int value,
      required final bool prefill,
      final List<int> markup}) = _$_CellModel;

  @override
  PositionModel get positionModel;
  @override
  int get value;
  @override
  bool get prefill;
  @override
  List<int> get markup;
  @override
  @JsonKey(ignore: true)
  _$$_CellModelCopyWith<_$_CellModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PositionModel {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionModelCopyWith<PositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionModelCopyWith<$Res> {
  factory $PositionModelCopyWith(
          PositionModel value, $Res Function(PositionModel) then) =
      _$PositionModelCopyWithImpl<$Res, PositionModel>;
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class _$PositionModelCopyWithImpl<$Res, $Val extends PositionModel>
    implements $PositionModelCopyWith<$Res> {
  _$PositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PositionModelCopyWith<$Res>
    implements $PositionModelCopyWith<$Res> {
  factory _$$_PositionModelCopyWith(
          _$_PositionModel value, $Res Function(_$_PositionModel) then) =
      __$$_PositionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class __$$_PositionModelCopyWithImpl<$Res>
    extends _$PositionModelCopyWithImpl<$Res, _$_PositionModel>
    implements _$$_PositionModelCopyWith<$Res> {
  __$$_PositionModelCopyWithImpl(
      _$_PositionModel _value, $Res Function(_$_PositionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_PositionModel(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PositionModel implements _PositionModel {
  const _$_PositionModel({required this.x, required this.y});

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'PositionModel(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionModel &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionModelCopyWith<_$_PositionModel> get copyWith =>
      __$$_PositionModelCopyWithImpl<_$_PositionModel>(this, _$identity);
}

abstract class _PositionModel implements PositionModel {
  const factory _PositionModel({required final int x, required final int y}) =
      _$_PositionModel;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$_PositionModelCopyWith<_$_PositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoveModel {
  int get value => throw _privateConstructorUsedError;
  List<int> get markup => throw _privateConstructorUsedError;
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoveModelCopyWith<MoveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveModelCopyWith<$Res> {
  factory $MoveModelCopyWith(MoveModel value, $Res Function(MoveModel) then) =
      _$MoveModelCopyWithImpl<$Res, MoveModel>;
  @useResult
  $Res call({int value, List<int> markup, int x, int y});
}

/// @nodoc
class _$MoveModelCopyWithImpl<$Res, $Val extends MoveModel>
    implements $MoveModelCopyWith<$Res> {
  _$MoveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? markup = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      markup: null == markup
          ? _value.markup
          : markup // ignore: cast_nullable_to_non_nullable
              as List<int>,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoveModelCopyWith<$Res> implements $MoveModelCopyWith<$Res> {
  factory _$$_MoveModelCopyWith(
          _$_MoveModel value, $Res Function(_$_MoveModel) then) =
      __$$_MoveModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, List<int> markup, int x, int y});
}

/// @nodoc
class __$$_MoveModelCopyWithImpl<$Res>
    extends _$MoveModelCopyWithImpl<$Res, _$_MoveModel>
    implements _$$_MoveModelCopyWith<$Res> {
  __$$_MoveModelCopyWithImpl(
      _$_MoveModel _value, $Res Function(_$_MoveModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? markup = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_MoveModel(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      markup: null == markup
          ? _value._markup
          : markup // ignore: cast_nullable_to_non_nullable
              as List<int>,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MoveModel implements _MoveModel {
  const _$_MoveModel(
      {required this.value,
      required final List<int> markup,
      required this.x,
      required this.y})
      : _markup = markup;

  @override
  final int value;
  final List<int> _markup;
  @override
  List<int> get markup {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markup);
  }

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'MoveModel(value: $value, markup: $markup, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoveModel &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._markup, _markup) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, value, const DeepCollectionEquality().hash(_markup), x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveModelCopyWith<_$_MoveModel> get copyWith =>
      __$$_MoveModelCopyWithImpl<_$_MoveModel>(this, _$identity);
}

abstract class _MoveModel implements MoveModel {
  const factory _MoveModel(
      {required final int value,
      required final List<int> markup,
      required final int x,
      required final int y}) = _$_MoveModel;

  @override
  int get value;
  @override
  List<int> get markup;
  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$_MoveModelCopyWith<_$_MoveModel> get copyWith =>
      throw _privateConstructorUsedError;
}
