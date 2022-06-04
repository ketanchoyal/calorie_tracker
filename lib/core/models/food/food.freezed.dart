// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
mixin _$Food {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  double get servingSize => throw _privateConstructorUsedError;
  Nutrition get nutrition => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String name,
      String? description,
      String? imageUrl,
      double servingSize,
      Nutrition nutrition,
      String? barcode});

  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$FoodCopyWithImpl<$Res> implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  final Food _value;
  // ignore: unused_field
  final $Res Function(Food) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? servingSize = freezed,
    Object? nutrition = freezed,
    Object? barcode = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      servingSize: servingSize == freezed
          ? _value.servingSize
          : servingSize // ignore: cast_nullable_to_non_nullable
              as double,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $NutritionCopyWith<$Res> get nutrition {
    return $NutritionCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value));
    });
  }
}

/// @nodoc
abstract class _$$_FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$$_FoodCopyWith(_$_Food value, $Res Function(_$_Food) then) =
      __$$_FoodCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String name,
      String? description,
      String? imageUrl,
      double servingSize,
      Nutrition nutrition,
      String? barcode});

  @override
  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_FoodCopyWithImpl<$Res> extends _$FoodCopyWithImpl<$Res>
    implements _$$_FoodCopyWith<$Res> {
  __$$_FoodCopyWithImpl(_$_Food _value, $Res Function(_$_Food) _then)
      : super(_value, (v) => _then(v as _$_Food));

  @override
  _$_Food get _value => super._value as _$_Food;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? servingSize = freezed,
    Object? nutrition = freezed,
    Object? barcode = freezed,
  }) {
    return _then(_$_Food(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      servingSize: servingSize == freezed
          ? _value.servingSize
          : servingSize // ignore: cast_nullable_to_non_nullable
              as double,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Food extends _Food {
  _$_Food(
      {this.id,
      required this.name,
      this.description,
      this.imageUrl,
      required this.servingSize,
      required this.nutrition,
      this.barcode})
      : super._();

  factory _$_Food.fromJson(Map<String, dynamic> json) => _$$_FoodFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final double servingSize;
  @override
  final Nutrition nutrition;
  @override
  final String? barcode;

  @override
  String toString() {
    return 'Food(id: $id, name: $name, description: $description, imageUrl: $imageUrl, servingSize: $servingSize, nutrition: $nutrition, barcode: $barcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Food &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.servingSize, servingSize) &&
            const DeepCollectionEquality().equals(other.nutrition, nutrition) &&
            const DeepCollectionEquality().equals(other.barcode, barcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(servingSize),
      const DeepCollectionEquality().hash(nutrition),
      const DeepCollectionEquality().hash(barcode));

  @JsonKey(ignore: true)
  @override
  _$$_FoodCopyWith<_$_Food> get copyWith =>
      __$$_FoodCopyWithImpl<_$_Food>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodToJson(this);
  }
}

abstract class _Food extends Food {
  factory _Food(
      {final String? id,
      required final String name,
      final String? description,
      final String? imageUrl,
      required final double servingSize,
      required final Nutrition nutrition,
      final String? barcode}) = _$_Food;
  _Food._() : super._();

  factory _Food.fromJson(Map<String, dynamic> json) = _$_Food.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  double get servingSize => throw _privateConstructorUsedError;
  @override
  Nutrition get nutrition => throw _privateConstructorUsedError;
  @override
  String? get barcode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FoodCopyWith<_$_Food> get copyWith => throw _privateConstructorUsedError;
}

Nutrition _$NutritionFromJson(Map<String, dynamic> json) {
  return _Nutrition.fromJson(json);
}

/// @nodoc
mixin _$Nutrition {
  double get calories => throw _privateConstructorUsedError;
  double? get fat => throw _privateConstructorUsedError;
  double? get carbs => throw _privateConstructorUsedError;
  double? get protein => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionCopyWith<Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res>;
  $Res call({double calories, double? fat, double? carbs, double? protein});
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res> implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  final Nutrition _value;
  // ignore: unused_field
  final $Res Function(Nutrition) _then;

  @override
  $Res call({
    Object? calories = freezed,
    Object? fat = freezed,
    Object? carbs = freezed,
    Object? protein = freezed,
  }) {
    return _then(_value.copyWith(
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double?,
      carbs: carbs == freezed
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double?,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_NutritionCopyWith<$Res> implements $NutritionCopyWith<$Res> {
  factory _$$_NutritionCopyWith(
          _$_Nutrition value, $Res Function(_$_Nutrition) then) =
      __$$_NutritionCopyWithImpl<$Res>;
  @override
  $Res call({double calories, double? fat, double? carbs, double? protein});
}

/// @nodoc
class __$$_NutritionCopyWithImpl<$Res> extends _$NutritionCopyWithImpl<$Res>
    implements _$$_NutritionCopyWith<$Res> {
  __$$_NutritionCopyWithImpl(
      _$_Nutrition _value, $Res Function(_$_Nutrition) _then)
      : super(_value, (v) => _then(v as _$_Nutrition));

  @override
  _$_Nutrition get _value => super._value as _$_Nutrition;

  @override
  $Res call({
    Object? calories = freezed,
    Object? fat = freezed,
    Object? carbs = freezed,
    Object? protein = freezed,
  }) {
    return _then(_$_Nutrition(
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double?,
      carbs: carbs == freezed
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double?,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nutrition implements _Nutrition {
  _$_Nutrition(
      {required this.calories,
      required this.fat,
      required this.carbs,
      required this.protein});

  factory _$_Nutrition.fromJson(Map<String, dynamic> json) =>
      _$$_NutritionFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nutrition &&
            const DeepCollectionEquality().equals(other.calories, calories) &&
            const DeepCollectionEquality().equals(other.fat, fat) &&
            const DeepCollectionEquality().equals(other.carbs, carbs) &&
            const DeepCollectionEquality().equals(other.protein, protein));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(calories),
      const DeepCollectionEquality().hash(fat),
      const DeepCollectionEquality().hash(carbs),
      const DeepCollectionEquality().hash(protein));

  @JsonKey(ignore: true)
  @override
  _$$_NutritionCopyWith<_$_Nutrition> get copyWith =>
      __$$_NutritionCopyWithImpl<_$_Nutrition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutritionToJson(this);
  }
}

abstract class _Nutrition implements Nutrition {
  factory _Nutrition(
      {required final double calories,
      required final double? fat,
      required final double? carbs,
      required final double? protein}) = _$_Nutrition;

  factory _Nutrition.fromJson(Map<String, dynamic> json) =
      _$_Nutrition.fromJson;

  @override
  double get calories => throw _privateConstructorUsedError;
  @override
  double? get fat => throw _privateConstructorUsedError;
  @override
  double? get carbs => throw _privateConstructorUsedError;
  @override
  double? get protein => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionCopyWith<_$_Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}
