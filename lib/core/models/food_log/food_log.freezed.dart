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

/// @nodoc
mixin _$FoodLog {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get caloriesPerServing => throw _privateConstructorUsedError;
  @JsonEnum()
  FoodType get foodType => throw _privateConstructorUsedError;
  double? get protein => throw _privateConstructorUsedError;
  double? get carbs => throw _privateConstructorUsedError;
  double? get fat => throw _privateConstructorUsedError;

  ///The date the food was added to the log.
  DateTime get date => throw _privateConstructorUsedError;

  /// This is the date when this food was eaten. It's not the date the foodLog was added.
  DateTime get foodLogDate => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false, nullable: false)
  bool get isCarbsAddedToHealthKit => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false, nullable: false)
  bool get isFatAddedToHealthKit => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false, nullable: false)
  bool get isProteinAddedToHealthKit => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false, nullable: false)
  bool get isCaloriesAddedToHealthKit => throw _privateConstructorUsedError;
  String? get foodReference =>
      throw _privateConstructorUsedError; //will be the actual serving size eaten,
  double get servingEaten => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodLogCopyWith<FoodLog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodLogCopyWith<$Res> {
  factory $FoodLogCopyWith(FoodLog value, $Res Function(FoodLog) then) =
      _$FoodLogCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String name,
      double caloriesPerServing,
      @JsonEnum()
          FoodType foodType,
      double? protein,
      double? carbs,
      double? fat,
      DateTime date,
      DateTime foodLogDate,
      @JsonKey(defaultValue: false, nullable: false)
          bool isCarbsAddedToHealthKit,
      @JsonKey(defaultValue: false, nullable: false)
          bool isFatAddedToHealthKit,
      @JsonKey(defaultValue: false, nullable: false)
          bool isProteinAddedToHealthKit,
      @JsonKey(defaultValue: false, nullable: false)
          bool isCaloriesAddedToHealthKit,
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
    Object? foodType = freezed,
    Object? protein = freezed,
    Object? carbs = freezed,
    Object? fat = freezed,
    Object? date = freezed,
    Object? foodLogDate = freezed,
    Object? isCarbsAddedToHealthKit = freezed,
    Object? isFatAddedToHealthKit = freezed,
    Object? isProteinAddedToHealthKit = freezed,
    Object? isCaloriesAddedToHealthKit = freezed,
    Object? foodReference = freezed,
    Object? servingEaten = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      caloriesPerServing: caloriesPerServing == freezed
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as double,
      foodType: foodType == freezed
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as FoodType,
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
      foodLogDate: foodLogDate == freezed
          ? _value.foodLogDate
          : foodLogDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCarbsAddedToHealthKit: isCarbsAddedToHealthKit == freezed
          ? _value.isCarbsAddedToHealthKit
          : isCarbsAddedToHealthKit // ignore: cast_nullable_to_non_nullable
              as bool,
      isFatAddedToHealthKit: isFatAddedToHealthKit == freezed
          ? _value.isFatAddedToHealthKit
          : isFatAddedToHealthKit // ignore: cast_nullable_to_non_nullable
              as bool,
      isProteinAddedToHealthKit: isProteinAddedToHealthKit == freezed
          ? _value.isProteinAddedToHealthKit
          : isProteinAddedToHealthKit // ignore: cast_nullable_to_non_nullable
              as bool,
      isCaloriesAddedToHealthKit: isCaloriesAddedToHealthKit == freezed
          ? _value.isCaloriesAddedToHealthKit
          : isCaloriesAddedToHealthKit // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {String? id,
      String name,
      double caloriesPerServing,
      @JsonEnum()
          FoodType foodType,
      double? protein,
      double? carbs,
      double? fat,
      DateTime date,
      DateTime foodLogDate,
      @JsonKey(defaultValue: false, nullable: false)
          bool isCarbsAddedToHealthKit,
      @JsonKey(defaultValue: false, nullable: false)
          bool isFatAddedToHealthKit,
      @JsonKey(defaultValue: false, nullable: false)
          bool isProteinAddedToHealthKit,
      @JsonKey(defaultValue: false, nullable: false)
          bool isCaloriesAddedToHealthKit,
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
    Object? foodType = freezed,
    Object? protein = freezed,
    Object? carbs = freezed,
    Object? fat = freezed,
    Object? date = freezed,
    Object? foodLogDate = freezed,
    Object? isCarbsAddedToHealthKit = freezed,
    Object? isFatAddedToHealthKit = freezed,
    Object? isProteinAddedToHealthKit = freezed,
    Object? isCaloriesAddedToHealthKit = freezed,
    Object? foodReference = freezed,
    Object? servingEaten = freezed,
  }) {
    return _then(_$_FoodLog(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      caloriesPerServing: caloriesPerServing == freezed
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as double,
      foodType: foodType == freezed
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as FoodType,
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
      foodLogDate: foodLogDate == freezed
          ? _value.foodLogDate
          : foodLogDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCarbsAddedToHealthKit: isCarbsAddedToHealthKit == freezed
          ? _value.isCarbsAddedToHealthKit
          : isCarbsAddedToHealthKit // ignore: cast_nullable_to_non_nullable
              as bool,
      isFatAddedToHealthKit: isFatAddedToHealthKit == freezed
          ? _value.isFatAddedToHealthKit
          : isFatAddedToHealthKit // ignore: cast_nullable_to_non_nullable
              as bool,
      isProteinAddedToHealthKit: isProteinAddedToHealthKit == freezed
          ? _value.isProteinAddedToHealthKit
          : isProteinAddedToHealthKit // ignore: cast_nullable_to_non_nullable
              as bool,
      isCaloriesAddedToHealthKit: isCaloriesAddedToHealthKit == freezed
          ? _value.isCaloriesAddedToHealthKit
          : isCaloriesAddedToHealthKit // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_FoodLog extends _FoodLog {
  _$_FoodLog(
      {this.id,
      required this.name,
      required this.caloriesPerServing,
      @JsonEnum()
          this.foodType = FoodType.other,
      this.protein,
      this.carbs,
      this.fat,
      required this.date,
      required this.foodLogDate,
      @JsonKey(defaultValue: false, nullable: false)
          this.isCarbsAddedToHealthKit = false,
      @JsonKey(defaultValue: false, nullable: false)
          this.isFatAddedToHealthKit = false,
      @JsonKey(defaultValue: false, nullable: false)
          this.isProteinAddedToHealthKit = false,
      @JsonKey(defaultValue: false, nullable: false)
          this.isCaloriesAddedToHealthKit = false,
      this.foodReference,
      required this.servingEaten})
      : super._();

  @override
  final String? id;
  @override
  final String name;
  @override
  final double caloriesPerServing;
  @override
  @JsonKey()
  @JsonEnum()
  final FoodType foodType;
  @override
  final double? protein;
  @override
  final double? carbs;
  @override
  final double? fat;

  ///The date the food was added to the log.
  @override
  final DateTime date;

  /// This is the date when this food was eaten. It's not the date the foodLog was added.
  @override
  final DateTime foodLogDate;
  @override
  @JsonKey(defaultValue: false, nullable: false)
  final bool isCarbsAddedToHealthKit;
  @override
  @JsonKey(defaultValue: false, nullable: false)
  final bool isFatAddedToHealthKit;
  @override
  @JsonKey(defaultValue: false, nullable: false)
  final bool isProteinAddedToHealthKit;
  @override
  @JsonKey(defaultValue: false, nullable: false)
  final bool isCaloriesAddedToHealthKit;
  @override
  final String? foodReference;
//will be the actual serving size eaten,
  @override
  final double servingEaten;

  @override
  String toString() {
    return 'FoodLog(id: $id, name: $name, caloriesPerServing: $caloriesPerServing, foodType: $foodType, protein: $protein, carbs: $carbs, fat: $fat, date: $date, foodLogDate: $foodLogDate, isCarbsAddedToHealthKit: $isCarbsAddedToHealthKit, isFatAddedToHealthKit: $isFatAddedToHealthKit, isProteinAddedToHealthKit: $isProteinAddedToHealthKit, isCaloriesAddedToHealthKit: $isCaloriesAddedToHealthKit, foodReference: $foodReference, servingEaten: $servingEaten)';
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
            const DeepCollectionEquality().equals(other.foodType, foodType) &&
            const DeepCollectionEquality().equals(other.protein, protein) &&
            const DeepCollectionEquality().equals(other.carbs, carbs) &&
            const DeepCollectionEquality().equals(other.fat, fat) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.foodLogDate, foodLogDate) &&
            const DeepCollectionEquality().equals(
                other.isCarbsAddedToHealthKit, isCarbsAddedToHealthKit) &&
            const DeepCollectionEquality()
                .equals(other.isFatAddedToHealthKit, isFatAddedToHealthKit) &&
            const DeepCollectionEquality().equals(
                other.isProteinAddedToHealthKit, isProteinAddedToHealthKit) &&
            const DeepCollectionEquality().equals(
                other.isCaloriesAddedToHealthKit, isCaloriesAddedToHealthKit) &&
            const DeepCollectionEquality()
                .equals(other.foodReference, foodReference) &&
            const DeepCollectionEquality()
                .equals(other.servingEaten, servingEaten));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(caloriesPerServing),
      const DeepCollectionEquality().hash(foodType),
      const DeepCollectionEquality().hash(protein),
      const DeepCollectionEquality().hash(carbs),
      const DeepCollectionEquality().hash(fat),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(foodLogDate),
      const DeepCollectionEquality().hash(isCarbsAddedToHealthKit),
      const DeepCollectionEquality().hash(isFatAddedToHealthKit),
      const DeepCollectionEquality().hash(isProteinAddedToHealthKit),
      const DeepCollectionEquality().hash(isCaloriesAddedToHealthKit),
      const DeepCollectionEquality().hash(foodReference),
      const DeepCollectionEquality().hash(servingEaten));

  @JsonKey(ignore: true)
  @override
  _$$_FoodLogCopyWith<_$_FoodLog> get copyWith =>
      __$$_FoodLogCopyWithImpl<_$_FoodLog>(this, _$identity);
}

abstract class _FoodLog extends FoodLog {
  factory _FoodLog(
      {final String? id,
      required final String name,
      required final double caloriesPerServing,
      @JsonEnum()
          final FoodType foodType,
      final double? protein,
      final double? carbs,
      final double? fat,
      required final DateTime date,
      required final DateTime foodLogDate,
      @JsonKey(defaultValue: false, nullable: false)
          final bool isCarbsAddedToHealthKit,
      @JsonKey(defaultValue: false, nullable: false)
          final bool isFatAddedToHealthKit,
      @JsonKey(defaultValue: false, nullable: false)
          final bool isProteinAddedToHealthKit,
      @JsonKey(defaultValue: false, nullable: false)
          final bool isCaloriesAddedToHealthKit,
      final String? foodReference,
      required final double servingEaten}) = _$_FoodLog;
  _FoodLog._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get caloriesPerServing => throw _privateConstructorUsedError;
  @override
  @JsonEnum()
  FoodType get foodType => throw _privateConstructorUsedError;
  @override
  double? get protein => throw _privateConstructorUsedError;
  @override
  double? get carbs => throw _privateConstructorUsedError;
  @override
  double? get fat => throw _privateConstructorUsedError;
  @override

  ///The date the food was added to the log.
  DateTime get date => throw _privateConstructorUsedError;
  @override

  /// This is the date when this food was eaten. It's not the date the foodLog was added.
  DateTime get foodLogDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: false, nullable: false)
  bool get isCarbsAddedToHealthKit => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: false, nullable: false)
  bool get isFatAddedToHealthKit => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: false, nullable: false)
  bool get isProteinAddedToHealthKit => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: false, nullable: false)
  bool get isCaloriesAddedToHealthKit => throw _privateConstructorUsedError;
  @override
  String? get foodReference => throw _privateConstructorUsedError;
  @override //will be the actual serving size eaten,
  double get servingEaten => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FoodLogCopyWith<_$_FoodLog> get copyWith =>
      throw _privateConstructorUsedError;
}
