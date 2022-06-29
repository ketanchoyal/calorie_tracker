// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_colories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddColoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)?
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)?
        submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectFoodEvent value) selectFood,
    required TResult Function(_QuickAddFoodEvent value) quickAddFood,
    required TResult Function(_SubmitEvent value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectFoodEvent value)? selectFood,
    TResult Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult Function(_SubmitEvent value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectFoodEvent value)? selectFood,
    TResult Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddColoriesEventCopyWith<$Res> {
  factory $AddColoriesEventCopyWith(
          AddColoriesEvent value, $Res Function(AddColoriesEvent) then) =
      _$AddColoriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddColoriesEventCopyWithImpl<$Res>
    implements $AddColoriesEventCopyWith<$Res> {
  _$AddColoriesEventCopyWithImpl(this._value, this._then);

  final AddColoriesEvent _value;
  // ignore: unused_field
  final $Res Function(AddColoriesEvent) _then;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res> extends _$AddColoriesEventCopyWithImpl<$Res>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, (v) => _then(v as _$_Reset));

  @override
  _$_Reset get _value => super._value as _$_Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  _$_Reset();

  @override
  String toString() {
    return 'AddColoriesEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)
        submit,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)?
        submit,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)?
        submit,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectFoodEvent value) selectFood,
    required TResult Function(_QuickAddFoodEvent value) quickAddFood,
    required TResult Function(_SubmitEvent value) submit,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectFoodEvent value)? selectFood,
    TResult Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult Function(_SubmitEvent value)? submit,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectFoodEvent value)? selectFood,
    TResult Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements AddColoriesEvent {
  factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_SelectFoodEventCopyWith<$Res> {
  factory _$$_SelectFoodEventCopyWith(
          _$_SelectFoodEvent value, $Res Function(_$_SelectFoodEvent) then) =
      __$$_SelectFoodEventCopyWithImpl<$Res>;
  $Res call({Food food});

  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class __$$_SelectFoodEventCopyWithImpl<$Res>
    extends _$AddColoriesEventCopyWithImpl<$Res>
    implements _$$_SelectFoodEventCopyWith<$Res> {
  __$$_SelectFoodEventCopyWithImpl(
      _$_SelectFoodEvent _value, $Res Function(_$_SelectFoodEvent) _then)
      : super(_value, (v) => _then(v as _$_SelectFoodEvent));

  @override
  _$_SelectFoodEvent get _value => super._value as _$_SelectFoodEvent;

  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_$_SelectFoodEvent(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
    ));
  }

  @override
  $FoodCopyWith<$Res> get food {
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc

class _$_SelectFoodEvent implements _SelectFoodEvent {
  _$_SelectFoodEvent({required this.food});

  @override
  final Food food;

  @override
  String toString() {
    return 'AddColoriesEvent.selectFood(food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectFoodEvent &&
            const DeepCollectionEquality().equals(other.food, food));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(food));

  @JsonKey(ignore: true)
  @override
  _$$_SelectFoodEventCopyWith<_$_SelectFoodEvent> get copyWith =>
      __$$_SelectFoodEventCopyWithImpl<_$_SelectFoodEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)
        submit,
  }) {
    return selectFood(food);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)?
        submit,
  }) {
    return selectFood?.call(food);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)?
        submit,
    required TResult orElse(),
  }) {
    if (selectFood != null) {
      return selectFood(food);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectFoodEvent value) selectFood,
    required TResult Function(_QuickAddFoodEvent value) quickAddFood,
    required TResult Function(_SubmitEvent value) submit,
  }) {
    return selectFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectFoodEvent value)? selectFood,
    TResult Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult Function(_SubmitEvent value)? submit,
  }) {
    return selectFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectFoodEvent value)? selectFood,
    TResult Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (selectFood != null) {
      return selectFood(this);
    }
    return orElse();
  }
}

abstract class _SelectFoodEvent implements AddColoriesEvent {
  factory _SelectFoodEvent({required final Food food}) = _$_SelectFoodEvent;

  Food get food => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SelectFoodEventCopyWith<_$_SelectFoodEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuickAddFoodEventCopyWith<$Res> {
  factory _$$_QuickAddFoodEventCopyWith(_$_QuickAddFoodEvent value,
          $Res Function(_$_QuickAddFoodEvent) then) =
      __$$_QuickAddFoodEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuickAddFoodEventCopyWithImpl<$Res>
    extends _$AddColoriesEventCopyWithImpl<$Res>
    implements _$$_QuickAddFoodEventCopyWith<$Res> {
  __$$_QuickAddFoodEventCopyWithImpl(
      _$_QuickAddFoodEvent _value, $Res Function(_$_QuickAddFoodEvent) _then)
      : super(_value, (v) => _then(v as _$_QuickAddFoodEvent));

  @override
  _$_QuickAddFoodEvent get _value => super._value as _$_QuickAddFoodEvent;
}

/// @nodoc

class _$_QuickAddFoodEvent implements _QuickAddFoodEvent {
  _$_QuickAddFoodEvent();

  @override
  String toString() {
    return 'AddColoriesEvent.quickAddFood()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QuickAddFoodEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)
        submit,
  }) {
    return quickAddFood();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)?
        submit,
  }) {
    return quickAddFood?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)?
        submit,
    required TResult orElse(),
  }) {
    if (quickAddFood != null) {
      return quickAddFood();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectFoodEvent value) selectFood,
    required TResult Function(_QuickAddFoodEvent value) quickAddFood,
    required TResult Function(_SubmitEvent value) submit,
  }) {
    return quickAddFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectFoodEvent value)? selectFood,
    TResult Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult Function(_SubmitEvent value)? submit,
  }) {
    return quickAddFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectFoodEvent value)? selectFood,
    TResult Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (quickAddFood != null) {
      return quickAddFood(this);
    }
    return orElse();
  }
}

abstract class _QuickAddFoodEvent implements AddColoriesEvent {
  factory _QuickAddFoodEvent() = _$_QuickAddFoodEvent;
}

/// @nodoc
abstract class _$$_SubmitEventCopyWith<$Res> {
  factory _$$_SubmitEventCopyWith(
          _$_SubmitEvent value, $Res Function(_$_SubmitEvent) then) =
      __$$_SubmitEventCopyWithImpl<$Res>;
  $Res call(
      {double servings,
      double caloriesPerServing,
      DateTime foodLogDate,
      String? name,
      Food? food,
      double? fat,
      double? carbs,
      double? protein,
      FoodType foodType});

  $FoodCopyWith<$Res>? get food;
}

/// @nodoc
class __$$_SubmitEventCopyWithImpl<$Res>
    extends _$AddColoriesEventCopyWithImpl<$Res>
    implements _$$_SubmitEventCopyWith<$Res> {
  __$$_SubmitEventCopyWithImpl(
      _$_SubmitEvent _value, $Res Function(_$_SubmitEvent) _then)
      : super(_value, (v) => _then(v as _$_SubmitEvent));

  @override
  _$_SubmitEvent get _value => super._value as _$_SubmitEvent;

  @override
  $Res call({
    Object? servings = freezed,
    Object? caloriesPerServing = freezed,
    Object? foodLogDate = freezed,
    Object? name = freezed,
    Object? food = freezed,
    Object? fat = freezed,
    Object? carbs = freezed,
    Object? protein = freezed,
    Object? foodType = freezed,
  }) {
    return _then(_$_SubmitEvent(
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as double,
      caloriesPerServing: caloriesPerServing == freezed
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as double,
      foodLogDate: foodLogDate == freezed
          ? _value.foodLogDate
          : foodLogDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food?,
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
      foodType: foodType == freezed
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as FoodType,
    ));
  }

  @override
  $FoodCopyWith<$Res>? get food {
    if (_value.food == null) {
      return null;
    }

    return $FoodCopyWith<$Res>(_value.food!, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc

class _$_SubmitEvent implements _SubmitEvent {
  _$_SubmitEvent(
      {required this.servings,
      required this.caloriesPerServing,
      required this.foodLogDate,
      this.name,
      this.food,
      this.fat,
      this.carbs,
      this.protein,
      required this.foodType});

  @override
  final double servings;
  @override
  final double caloriesPerServing;
  @override
  final DateTime foodLogDate;
  @override
  final String? name;
  @override
  final Food? food;
  @override
  final double? fat;
  @override
  final double? carbs;
  @override
  final double? protein;
  @override
  final FoodType foodType;

  @override
  String toString() {
    return 'AddColoriesEvent.submit(servings: $servings, caloriesPerServing: $caloriesPerServing, foodLogDate: $foodLogDate, name: $name, food: $food, fat: $fat, carbs: $carbs, protein: $protein, foodType: $foodType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitEvent &&
            const DeepCollectionEquality().equals(other.servings, servings) &&
            const DeepCollectionEquality()
                .equals(other.caloriesPerServing, caloriesPerServing) &&
            const DeepCollectionEquality()
                .equals(other.foodLogDate, foodLogDate) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.food, food) &&
            const DeepCollectionEquality().equals(other.fat, fat) &&
            const DeepCollectionEquality().equals(other.carbs, carbs) &&
            const DeepCollectionEquality().equals(other.protein, protein) &&
            const DeepCollectionEquality().equals(other.foodType, foodType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(servings),
      const DeepCollectionEquality().hash(caloriesPerServing),
      const DeepCollectionEquality().hash(foodLogDate),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(food),
      const DeepCollectionEquality().hash(fat),
      const DeepCollectionEquality().hash(carbs),
      const DeepCollectionEquality().hash(protein),
      const DeepCollectionEquality().hash(foodType));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitEventCopyWith<_$_SubmitEvent> get copyWith =>
      __$$_SubmitEventCopyWithImpl<_$_SubmitEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)
        submit,
  }) {
    return submit(servings, caloriesPerServing, foodLogDate, name, food, fat,
        carbs, protein, foodType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)?
        submit,
  }) {
    return submit?.call(servings, caloriesPerServing, foodLogDate, name, food,
        fat, carbs, protein, foodType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function(
            double servings,
            double caloriesPerServing,
            DateTime foodLogDate,
            String? name,
            Food? food,
            double? fat,
            double? carbs,
            double? protein,
            FoodType foodType)?
        submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(servings, caloriesPerServing, foodLogDate, name, food, fat,
          carbs, protein, foodType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectFoodEvent value) selectFood,
    required TResult Function(_QuickAddFoodEvent value) quickAddFood,
    required TResult Function(_SubmitEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectFoodEvent value)? selectFood,
    TResult Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult Function(_SubmitEvent value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectFoodEvent value)? selectFood,
    TResult Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _SubmitEvent implements AddColoriesEvent {
  factory _SubmitEvent(
      {required final double servings,
      required final double caloriesPerServing,
      required final DateTime foodLogDate,
      final String? name,
      final Food? food,
      final double? fat,
      final double? carbs,
      final double? protein,
      required final FoodType foodType}) = _$_SubmitEvent;

  double get servings => throw _privateConstructorUsedError;
  double get caloriesPerServing => throw _privateConstructorUsedError;
  DateTime get foodLogDate => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Food? get food => throw _privateConstructorUsedError;
  double? get fat => throw _privateConstructorUsedError;
  double? get carbs => throw _privateConstructorUsedError;
  double? get protein => throw _privateConstructorUsedError;
  FoodType get foodType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SubmitEventCopyWith<_$_SubmitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddColoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function() adding,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(SelectFoodState value) selectFood,
    required TResult Function(QuickAddFoodState value) quickAddFood,
    required TResult Function(_AddingState value) adding,
    required TResult Function(_SuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddColoriesStateCopyWith<$Res> {
  factory $AddColoriesStateCopyWith(
          AddColoriesState value, $Res Function(AddColoriesState) then) =
      _$AddColoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddColoriesStateCopyWithImpl<$Res>
    implements $AddColoriesStateCopyWith<$Res> {
  _$AddColoriesStateCopyWithImpl(this._value, this._then);

  final AddColoriesState _value;
  // ignore: unused_field
  final $Res Function(AddColoriesState) _then;
}

/// @nodoc
abstract class _$$InitialStateCopyWith<$Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState value, $Res Function(_$InitialState) then) =
      __$$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateCopyWithImpl<$Res>
    extends _$AddColoriesStateCopyWithImpl<$Res>
    implements _$$InitialStateCopyWith<$Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState _value, $Res Function(_$InitialState) _then)
      : super(_value, (v) => _then(v as _$InitialState));

  @override
  _$InitialState get _value => super._value as _$InitialState;
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'AddColoriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function() adding,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(SelectFoodState value) selectFood,
    required TResult Function(QuickAddFoodState value) quickAddFood,
    required TResult Function(_AddingState value) adding,
    required TResult Function(_SuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements AddColoriesState {
  const factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class _$$SelectFoodStateCopyWith<$Res> {
  factory _$$SelectFoodStateCopyWith(
          _$SelectFoodState value, $Res Function(_$SelectFoodState) then) =
      __$$SelectFoodStateCopyWithImpl<$Res>;
  $Res call({Food food});

  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class __$$SelectFoodStateCopyWithImpl<$Res>
    extends _$AddColoriesStateCopyWithImpl<$Res>
    implements _$$SelectFoodStateCopyWith<$Res> {
  __$$SelectFoodStateCopyWithImpl(
      _$SelectFoodState _value, $Res Function(_$SelectFoodState) _then)
      : super(_value, (v) => _then(v as _$SelectFoodState));

  @override
  _$SelectFoodState get _value => super._value as _$SelectFoodState;

  @override
  $Res call({
    Object? food = freezed,
  }) {
    return _then(_$SelectFoodState(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
    ));
  }

  @override
  $FoodCopyWith<$Res> get food {
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc

class _$SelectFoodState implements SelectFoodState {
  const _$SelectFoodState({required this.food});

  @override
  final Food food;

  @override
  String toString() {
    return 'AddColoriesState.selectFood(food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFoodState &&
            const DeepCollectionEquality().equals(other.food, food));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(food));

  @JsonKey(ignore: true)
  @override
  _$$SelectFoodStateCopyWith<_$SelectFoodState> get copyWith =>
      __$$SelectFoodStateCopyWithImpl<_$SelectFoodState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function() adding,
    required TResult Function() success,
  }) {
    return selectFood(food);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
  }) {
    return selectFood?.call(food);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (selectFood != null) {
      return selectFood(food);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(SelectFoodState value) selectFood,
    required TResult Function(QuickAddFoodState value) quickAddFood,
    required TResult Function(_AddingState value) adding,
    required TResult Function(_SuccessState value) success,
  }) {
    return selectFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
  }) {
    return selectFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (selectFood != null) {
      return selectFood(this);
    }
    return orElse();
  }
}

abstract class SelectFoodState implements AddColoriesState {
  const factory SelectFoodState({required final Food food}) = _$SelectFoodState;

  Food get food => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SelectFoodStateCopyWith<_$SelectFoodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuickAddFoodStateCopyWith<$Res> {
  factory _$$QuickAddFoodStateCopyWith(
          _$QuickAddFoodState value, $Res Function(_$QuickAddFoodState) then) =
      __$$QuickAddFoodStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuickAddFoodStateCopyWithImpl<$Res>
    extends _$AddColoriesStateCopyWithImpl<$Res>
    implements _$$QuickAddFoodStateCopyWith<$Res> {
  __$$QuickAddFoodStateCopyWithImpl(
      _$QuickAddFoodState _value, $Res Function(_$QuickAddFoodState) _then)
      : super(_value, (v) => _then(v as _$QuickAddFoodState));

  @override
  _$QuickAddFoodState get _value => super._value as _$QuickAddFoodState;
}

/// @nodoc

class _$QuickAddFoodState implements QuickAddFoodState {
  const _$QuickAddFoodState();

  @override
  String toString() {
    return 'AddColoriesState.quickAddFood()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuickAddFoodState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function() adding,
    required TResult Function() success,
  }) {
    return quickAddFood();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
  }) {
    return quickAddFood?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (quickAddFood != null) {
      return quickAddFood();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(SelectFoodState value) selectFood,
    required TResult Function(QuickAddFoodState value) quickAddFood,
    required TResult Function(_AddingState value) adding,
    required TResult Function(_SuccessState value) success,
  }) {
    return quickAddFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
  }) {
    return quickAddFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (quickAddFood != null) {
      return quickAddFood(this);
    }
    return orElse();
  }
}

abstract class QuickAddFoodState implements AddColoriesState {
  const factory QuickAddFoodState() = _$QuickAddFoodState;
}

/// @nodoc
abstract class _$$_AddingStateCopyWith<$Res> {
  factory _$$_AddingStateCopyWith(
          _$_AddingState value, $Res Function(_$_AddingState) then) =
      __$$_AddingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddingStateCopyWithImpl<$Res>
    extends _$AddColoriesStateCopyWithImpl<$Res>
    implements _$$_AddingStateCopyWith<$Res> {
  __$$_AddingStateCopyWithImpl(
      _$_AddingState _value, $Res Function(_$_AddingState) _then)
      : super(_value, (v) => _then(v as _$_AddingState));

  @override
  _$_AddingState get _value => super._value as _$_AddingState;
}

/// @nodoc

class _$_AddingState implements _AddingState {
  const _$_AddingState();

  @override
  String toString() {
    return 'AddColoriesState.adding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function() adding,
    required TResult Function() success,
  }) {
    return adding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
  }) {
    return adding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(SelectFoodState value) selectFood,
    required TResult Function(QuickAddFoodState value) quickAddFood,
    required TResult Function(_AddingState value) adding,
    required TResult Function(_SuccessState value) success,
  }) {
    return adding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
  }) {
    return adding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding(this);
    }
    return orElse();
  }
}

abstract class _AddingState implements AddColoriesState {
  const factory _AddingState() = _$_AddingState;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$AddColoriesStateCopyWithImpl<$Res>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, (v) => _then(v as _$_SuccessState));

  @override
  _$_SuccessState get _value => super._value as _$_SuccessState;
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState();

  @override
  String toString() {
    return 'AddColoriesState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Food food) selectFood,
    required TResult Function() quickAddFood,
    required TResult Function() adding,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Food food)? selectFood,
    TResult Function()? quickAddFood,
    TResult Function()? adding,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(SelectFoodState value) selectFood,
    required TResult Function(QuickAddFoodState value) quickAddFood,
    required TResult Function(_AddingState value) adding,
    required TResult Function(_SuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(SelectFoodState value)? selectFood,
    TResult Function(QuickAddFoodState value)? quickAddFood,
    TResult Function(_AddingState value)? adding,
    TResult Function(_SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements AddColoriesState {
  const factory _SuccessState() = _$_SuccessState;
}
