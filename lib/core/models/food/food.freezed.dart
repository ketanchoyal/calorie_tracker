// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Food {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  Nutrition get nutrition => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;
  List<Food>? get incredients => throw _privateConstructorUsedError;
  bool? get isRecipe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res, Food>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String? description,
      String? imageUrl,
      Nutrition nutrition,
      String? barcode,
      String? notes,
      DateTime? dateTime,
      double? quantity,
      List<Food>? incredients,
      bool? isRecipe});

  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$FoodCopyWithImpl<$Res, $Val extends Food>
    implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? nutrition = null,
    Object? barcode = freezed,
    Object? notes = freezed,
    Object? dateTime = freezed,
    Object? quantity = freezed,
    Object? incredients = freezed,
    Object? isRecipe = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      incredients: freezed == incredients
          ? _value.incredients
          : incredients // ignore: cast_nullable_to_non_nullable
              as List<Food>?,
      isRecipe: freezed == isRecipe
          ? _value.isRecipe
          : isRecipe // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NutritionCopyWith<$Res> get nutrition {
    return $NutritionCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FoodImplCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$$FoodImplCopyWith(
          _$FoodImpl value, $Res Function(_$FoodImpl) then) =
      __$$FoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String? description,
      String? imageUrl,
      Nutrition nutrition,
      String? barcode,
      String? notes,
      DateTime? dateTime,
      double? quantity,
      List<Food>? incredients,
      bool? isRecipe});

  @override
  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$FoodImplCopyWithImpl<$Res>
    extends _$FoodCopyWithImpl<$Res, _$FoodImpl>
    implements _$$FoodImplCopyWith<$Res> {
  __$$FoodImplCopyWithImpl(_$FoodImpl _value, $Res Function(_$FoodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? nutrition = null,
    Object? barcode = freezed,
    Object? notes = freezed,
    Object? dateTime = freezed,
    Object? quantity = freezed,
    Object? incredients = freezed,
    Object? isRecipe = freezed,
  }) {
    return _then(_$FoodImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      incredients: freezed == incredients
          ? _value._incredients
          : incredients // ignore: cast_nullable_to_non_nullable
              as List<Food>?,
      isRecipe: freezed == isRecipe
          ? _value.isRecipe
          : isRecipe // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$FoodImpl extends _Food {
  _$FoodImpl(
      {this.id,
      required this.name,
      this.description,
      this.imageUrl,
      required this.nutrition,
      this.barcode,
      this.notes,
      this.dateTime,
      this.quantity,
      final List<Food>? incredients,
      this.isRecipe = false})
      : _incredients = incredients,
        super._();

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final Nutrition nutrition;
  @override
  final String? barcode;
  @override
  final String? notes;
  @override
  final DateTime? dateTime;
  @override
  final double? quantity;
  final List<Food>? _incredients;
  @override
  List<Food>? get incredients {
    final value = _incredients;
    if (value == null) return null;
    if (_incredients is EqualUnmodifiableListView) return _incredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool? isRecipe;

  @override
  String toString() {
    return 'Food(id: $id, name: $name, description: $description, imageUrl: $imageUrl, nutrition: $nutrition, barcode: $barcode, notes: $notes, dateTime: $dateTime, quantity: $quantity, incredients: $incredients, isRecipe: $isRecipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other._incredients, _incredients) &&
            (identical(other.isRecipe, isRecipe) ||
                other.isRecipe == isRecipe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageUrl,
      nutrition,
      barcode,
      notes,
      dateTime,
      quantity,
      const DeepCollectionEquality().hash(_incredients),
      isRecipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodImplCopyWith<_$FoodImpl> get copyWith =>
      __$$FoodImplCopyWithImpl<_$FoodImpl>(this, _$identity);
}

abstract class _Food extends Food {
  factory _Food(
      {final String? id,
      required final String name,
      final String? description,
      final String? imageUrl,
      required final Nutrition nutrition,
      final String? barcode,
      final String? notes,
      final DateTime? dateTime,
      final double? quantity,
      final List<Food>? incredients,
      final bool? isRecipe}) = _$FoodImpl;
  _Food._() : super._();

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  Nutrition get nutrition;
  @override
  String? get barcode;
  @override
  String? get notes;
  @override
  DateTime? get dateTime;
  @override
  double? get quantity;
  @override
  List<Food>? get incredients;
  @override
  bool? get isRecipe;
  @override
  @JsonKey(ignore: true)
  _$$FoodImplCopyWith<_$FoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Nutrition {
  double get calories => throw _privateConstructorUsedError;
  double? get fat => throw _privateConstructorUsedError;
  double? get carbs => throw _privateConstructorUsedError;
  double? get protein => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NutritionCopyWith<Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res, Nutrition>;
  @useResult
  $Res call({double calories, double? fat, double? carbs, double? protein});
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res, $Val extends Nutrition>
    implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? fat = freezed,
    Object? carbs = freezed,
    Object? protein = freezed,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      fat: freezed == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double?,
      carbs: freezed == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double?,
      protein: freezed == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutritionImplCopyWith<$Res>
    implements $NutritionCopyWith<$Res> {
  factory _$$NutritionImplCopyWith(
          _$NutritionImpl value, $Res Function(_$NutritionImpl) then) =
      __$$NutritionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double calories, double? fat, double? carbs, double? protein});
}

/// @nodoc
class __$$NutritionImplCopyWithImpl<$Res>
    extends _$NutritionCopyWithImpl<$Res, _$NutritionImpl>
    implements _$$NutritionImplCopyWith<$Res> {
  __$$NutritionImplCopyWithImpl(
      _$NutritionImpl _value, $Res Function(_$NutritionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? fat = freezed,
    Object? carbs = freezed,
    Object? protein = freezed,
  }) {
    return _then(_$NutritionImpl(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      fat: freezed == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double?,
      carbs: freezed == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double?,
      protein: freezed == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$NutritionImpl extends _Nutrition {
  _$NutritionImpl(
      {required this.calories,
      required this.fat,
      required this.carbs,
      required this.protein})
      : super._();

  @override
  final double calories;
  @override
  final double? fat;
  @override
  final double? carbs;
  @override
  final double? protein;

  @override
  String toString() {
    return 'Nutrition(calories: $calories, fat: $fat, carbs: $carbs, protein: $protein)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutritionImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.carbs, carbs) || other.carbs == carbs) &&
            (identical(other.protein, protein) || other.protein == protein));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calories, fat, carbs, protein);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NutritionImplCopyWith<_$NutritionImpl> get copyWith =>
      __$$NutritionImplCopyWithImpl<_$NutritionImpl>(this, _$identity);
}

abstract class _Nutrition extends Nutrition {
  factory _Nutrition(
      {required final double calories,
      required final double? fat,
      required final double? carbs,
      required final double? protein}) = _$NutritionImpl;
  _Nutrition._() : super._();

  @override
  double get calories;
  @override
  double? get fat;
  @override
  double? get carbs;
  @override
  double? get protein;
  @override
  @JsonKey(ignore: true)
  _$$NutritionImplCopyWith<_$NutritionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
