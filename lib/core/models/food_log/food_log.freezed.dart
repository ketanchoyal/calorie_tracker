// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'food_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodLog _$FoodLogFromJson(Map<String, dynamic> json) {
  return _FoodLog.fromJson(json);
}

/// @nodoc
mixin _$FoodLog {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get caloriesPerServing => throw _privateConstructorUsedError;
  double? get protein => throw _privateConstructorUsedError;
  double? get carbs => throw _privateConstructorUsedError;
  double? get fat => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get foodReference =>
      throw _privateConstructorUsedError; //will be the actual serving size eaten,
  double get servingEaten => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodLogCopyWith<FoodLog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodLogCopyWith<$Res> {
  factory $FoodLogCopyWith(FoodLog value, $Res Function(FoodLog) then) =
      _$FoodLogCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      double caloriesPerServing,
      double? protein,
      double? carbs,
      double? fat,
      DateTime date,
      String? foodReference,
      double servingEaten});
}

/// @nodoc
class _$FoodLogCopyWithImpl<$Res> implements $FoodLogCopyWith<$Res> {
  _$FoodLogCopyWithImpl(this._value, this._then);

  final FoodLog _value;
  // ignore: unused_field
  final $Res Function(FoodLog) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? caloriesPerServing = freezed,
    Object? protein = freezed,
    Object? carbs = freezed,
    Object? fat = freezed,
    Object? date = freezed,
    Object? foodReference = freezed,
    Object? servingEaten = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      caloriesPerServing: caloriesPerServing == freezed
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as double,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double?,
      carbs: carbs == freezed
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double?,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      foodReference: foodReference == freezed
          ? _value.foodReference
          : foodReference // ignore: cast_nullable_to_non_nullable
              as String?,
      servingEaten: servingEaten == freezed
          ? _value.servingEaten
          : servingEaten // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_FoodLogCopyWith<$Res> implements $FoodLogCopyWith<$Res> {
  factory _$$_FoodLogCopyWith(
          _$_FoodLog value, $Res Function(_$_FoodLog) then) =
      __$$_FoodLogCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      double caloriesPerServing,
      double? protein,
      double? carbs,
      double? fat,
      DateTime date,
      String? foodReference,
      double servingEaten});
}

/// @nodoc
class __$$_FoodLogCopyWithImpl<$Res> extends _$FoodLogCopyWithImpl<$Res>
    implements _$$_FoodLogCopyWith<$Res> {
  __$$_FoodLogCopyWithImpl(_$_FoodLog _value, $Res Function(_$_FoodLog) _then)
      : super(_value, (v) => _then(v as _$_FoodLog));

  @override
  _$_FoodLog get _value => super._value as _$_FoodLog;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? caloriesPerServing = freezed,
    Object? protein = freezed,
    Object? carbs = freezed,
    Object? fat = freezed,
    Object? date = freezed,
    Object? foodReference = freezed,
    Object? servingEaten = freezed,
  }) {
    return _then(_$_FoodLog(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      caloriesPerServing: caloriesPerServing == freezed
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as double,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double?,
      carbs: carbs == freezed
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double?,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      foodReference: foodReference == freezed
          ? _value.foodReference
          : foodReference // ignore: cast_nullable_to_non_nullable
              as String?,
      servingEaten: servingEaten == freezed
          ? _value.servingEaten
          : servingEaten // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodLog implements _FoodLog {
  _$_FoodLog(
      {required this.id,
      required this.name,
      required this.caloriesPerServing,
      this.protein,
      this.carbs,
      this.fat,
      required this.date,
      this.foodReference,
      required this.servingEaten});

  factory _$_FoodLog.fromJson(Map<String, dynamic> json) =>
      _$$_FoodLogFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double caloriesPerServing;
  @override
  final double? protein;
  @override
  final double? carbs;
  @override
  final double? fat;
  @override
  final DateTime date;
  @override
  final String? foodReference;
//will be the actual serving size eaten,
  @override
  final double servingEaten;

  @override
  String toString() {
    return 'FoodLog(id: $id, name: $name, caloriesPerServing: $caloriesPerServing, protein: $protein, carbs: $carbs, fat: $fat, date: $date, foodReference: $foodReference, servingEaten: $servingEaten)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodLog &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.caloriesPerServing, caloriesPerServing) &&
            const DeepCollectionEquality().equals(other.protein, protein) &&
            const DeepCollectionEquality().equals(other.carbs, carbs) &&
            const DeepCollectionEquality().equals(other.fat, fat) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.foodReference, foodReference) &&
            const DeepCollectionEquality()
                .equals(other.servingEaten, servingEaten));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(caloriesPerServing),
      const DeepCollectionEquality().hash(protein),
      const DeepCollectionEquality().hash(carbs),
      const DeepCollectionEquality().hash(fat),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(foodReference),
      const DeepCollectionEquality().hash(servingEaten));

  @JsonKey(ignore: true)
  @override
  _$$_FoodLogCopyWith<_$_FoodLog> get copyWith =>
      __$$_FoodLogCopyWithImpl<_$_FoodLog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodLogToJson(this);
  }
}

abstract class _FoodLog implements FoodLog {
  factory _FoodLog(
      {required final String id,
      required final String name,
      required final double caloriesPerServing,
      final double? protein,
      final double? carbs,
      final double? fat,
      required final DateTime date,
      final String? foodReference,
      required final double servingEaten}) = _$_FoodLog;

  factory _FoodLog.fromJson(Map<String, dynamic> json) = _$_FoodLog.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get caloriesPerServing => throw _privateConstructorUsedError;
  @override
  double? get protein => throw _privateConstructorUsedError;
  @override
  double? get carbs => throw _privateConstructorUsedError;
  @override
  double? get fat => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  String? get foodReference => throw _privateConstructorUsedError;
  @override //will be the actual serving size eaten,
  double get servingEaten => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FoodLogCopyWith<_$_FoodLog> get copyWith =>
      throw _privateConstructorUsedError;
}
