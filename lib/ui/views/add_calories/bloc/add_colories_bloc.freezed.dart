// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_colories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function()? reset,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function(
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
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SelectFoodEvent value)? selectFood,
    TResult? Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult? Function(_SubmitEvent value)? submit,
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
      _$AddColoriesEventCopyWithImpl<$Res, AddColoriesEvent>;
}

/// @nodoc
class _$AddColoriesEventCopyWithImpl<$Res, $Val extends AddColoriesEvent>
    implements $AddColoriesEventCopyWith<$Res> {
  _$AddColoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$AddColoriesEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements _Reset {
  _$ResetImpl();

  @override
  String toString() {
    return 'AddColoriesEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
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
    TResult? Function()? reset,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function(
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
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SelectFoodEvent value)? selectFood,
    TResult? Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult? Function(_SubmitEvent value)? submit,
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
  factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$SelectFoodEventImplCopyWith<$Res> {
  factory _$$SelectFoodEventImplCopyWith(_$SelectFoodEventImpl value,
          $Res Function(_$SelectFoodEventImpl) then) =
      __$$SelectFoodEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Food food});

  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class __$$SelectFoodEventImplCopyWithImpl<$Res>
    extends _$AddColoriesEventCopyWithImpl<$Res, _$SelectFoodEventImpl>
    implements _$$SelectFoodEventImplCopyWith<$Res> {
  __$$SelectFoodEventImplCopyWithImpl(
      _$SelectFoodEventImpl _value, $Res Function(_$SelectFoodEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = null,
  }) {
    return _then(_$SelectFoodEventImpl(
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodCopyWith<$Res> get food {
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc

class _$SelectFoodEventImpl implements _SelectFoodEvent {
  _$SelectFoodEventImpl({required this.food});

  @override
  final Food food;

  @override
  String toString() {
    return 'AddColoriesEvent.selectFood(food: $food)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFoodEventImpl &&
            (identical(other.food, food) || other.food == food));
  }

  @override
  int get hashCode => Object.hash(runtimeType, food);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectFoodEventImplCopyWith<_$SelectFoodEventImpl> get copyWith =>
      __$$SelectFoodEventImplCopyWithImpl<_$SelectFoodEventImpl>(
          this, _$identity);

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
    TResult? Function()? reset,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function(
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
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SelectFoodEvent value)? selectFood,
    TResult? Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult? Function(_SubmitEvent value)? submit,
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
  factory _SelectFoodEvent({required final Food food}) = _$SelectFoodEventImpl;

  Food get food;
  @JsonKey(ignore: true)
  _$$SelectFoodEventImplCopyWith<_$SelectFoodEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuickAddFoodEventImplCopyWith<$Res> {
  factory _$$QuickAddFoodEventImplCopyWith(_$QuickAddFoodEventImpl value,
          $Res Function(_$QuickAddFoodEventImpl) then) =
      __$$QuickAddFoodEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuickAddFoodEventImplCopyWithImpl<$Res>
    extends _$AddColoriesEventCopyWithImpl<$Res, _$QuickAddFoodEventImpl>
    implements _$$QuickAddFoodEventImplCopyWith<$Res> {
  __$$QuickAddFoodEventImplCopyWithImpl(_$QuickAddFoodEventImpl _value,
      $Res Function(_$QuickAddFoodEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuickAddFoodEventImpl implements _QuickAddFoodEvent {
  _$QuickAddFoodEventImpl();

  @override
  String toString() {
    return 'AddColoriesEvent.quickAddFood()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuickAddFoodEventImpl);
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
    TResult? Function()? reset,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function(
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
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SelectFoodEvent value)? selectFood,
    TResult? Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult? Function(_SubmitEvent value)? submit,
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
  factory _QuickAddFoodEvent() = _$QuickAddFoodEventImpl;
}

/// @nodoc
abstract class _$$SubmitEventImplCopyWith<$Res> {
  factory _$$SubmitEventImplCopyWith(
          _$SubmitEventImpl value, $Res Function(_$SubmitEventImpl) then) =
      __$$SubmitEventImplCopyWithImpl<$Res>;
  @useResult
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
class __$$SubmitEventImplCopyWithImpl<$Res>
    extends _$AddColoriesEventCopyWithImpl<$Res, _$SubmitEventImpl>
    implements _$$SubmitEventImplCopyWith<$Res> {
  __$$SubmitEventImplCopyWithImpl(
      _$SubmitEventImpl _value, $Res Function(_$SubmitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servings = null,
    Object? caloriesPerServing = null,
    Object? foodLogDate = null,
    Object? name = freezed,
    Object? food = freezed,
    Object? fat = freezed,
    Object? carbs = freezed,
    Object? protein = freezed,
    Object? foodType = null,
  }) {
    return _then(_$SubmitEventImpl(
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as double,
      caloriesPerServing: null == caloriesPerServing
          ? _value.caloriesPerServing
          : caloriesPerServing // ignore: cast_nullable_to_non_nullable
              as double,
      foodLogDate: null == foodLogDate
          ? _value.foodLogDate
          : foodLogDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food?,
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
      foodType: null == foodType
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as FoodType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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

class _$SubmitEventImpl implements _SubmitEvent {
  _$SubmitEventImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitEventImpl &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.caloriesPerServing, caloriesPerServing) ||
                other.caloriesPerServing == caloriesPerServing) &&
            (identical(other.foodLogDate, foodLogDate) ||
                other.foodLogDate == foodLogDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.carbs, carbs) || other.carbs == carbs) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.foodType, foodType) ||
                other.foodType == foodType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, servings, caloriesPerServing,
      foodLogDate, name, food, fat, carbs, protein, foodType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitEventImplCopyWith<_$SubmitEventImpl> get copyWith =>
      __$$SubmitEventImplCopyWithImpl<_$SubmitEventImpl>(this, _$identity);

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
    TResult? Function()? reset,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function(
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
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SelectFoodEvent value)? selectFood,
    TResult? Function(_QuickAddFoodEvent value)? quickAddFood,
    TResult? Function(_SubmitEvent value)? submit,
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
      required final FoodType foodType}) = _$SubmitEventImpl;

  double get servings;
  double get caloriesPerServing;
  DateTime get foodLogDate;
  String? get name;
  Food? get food;
  double? get fat;
  double? get carbs;
  double? get protein;
  FoodType get foodType;
  @JsonKey(ignore: true)
  _$$SubmitEventImplCopyWith<_$SubmitEventImpl> get copyWith =>
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
    TResult? Function()? initial,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function()? adding,
    TResult? Function()? success,
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
    TResult? Function(InitialState value)? initial,
    TResult? Function(SelectFoodState value)? selectFood,
    TResult? Function(QuickAddFoodState value)? quickAddFood,
    TResult? Function(_AddingState value)? adding,
    TResult? Function(_SuccessState value)? success,
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
      _$AddColoriesStateCopyWithImpl<$Res, AddColoriesState>;
}

/// @nodoc
class _$AddColoriesStateCopyWithImpl<$Res, $Val extends AddColoriesState>
    implements $AddColoriesStateCopyWith<$Res> {
  _$AddColoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$AddColoriesStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'AddColoriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
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
    TResult? Function()? initial,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function()? adding,
    TResult? Function()? success,
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
    TResult? Function(InitialState value)? initial,
    TResult? Function(SelectFoodState value)? selectFood,
    TResult? Function(QuickAddFoodState value)? quickAddFood,
    TResult? Function(_AddingState value)? adding,
    TResult? Function(_SuccessState value)? success,
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
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$SelectFoodStateImplCopyWith<$Res> {
  factory _$$SelectFoodStateImplCopyWith(_$SelectFoodStateImpl value,
          $Res Function(_$SelectFoodStateImpl) then) =
      __$$SelectFoodStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Food food});

  $FoodCopyWith<$Res> get food;
}

/// @nodoc
class __$$SelectFoodStateImplCopyWithImpl<$Res>
    extends _$AddColoriesStateCopyWithImpl<$Res, _$SelectFoodStateImpl>
    implements _$$SelectFoodStateImplCopyWith<$Res> {
  __$$SelectFoodStateImplCopyWithImpl(
      _$SelectFoodStateImpl _value, $Res Function(_$SelectFoodStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? food = null,
  }) {
    return _then(_$SelectFoodStateImpl(
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodCopyWith<$Res> get food {
    return $FoodCopyWith<$Res>(_value.food, (value) {
      return _then(_value.copyWith(food: value));
    });
  }
}

/// @nodoc

class _$SelectFoodStateImpl implements SelectFoodState {
  const _$SelectFoodStateImpl({required this.food});

  @override
  final Food food;

  @override
  String toString() {
    return 'AddColoriesState.selectFood(food: $food)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectFoodStateImpl &&
            (identical(other.food, food) || other.food == food));
  }

  @override
  int get hashCode => Object.hash(runtimeType, food);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectFoodStateImplCopyWith<_$SelectFoodStateImpl> get copyWith =>
      __$$SelectFoodStateImplCopyWithImpl<_$SelectFoodStateImpl>(
          this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function()? adding,
    TResult? Function()? success,
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
    TResult? Function(InitialState value)? initial,
    TResult? Function(SelectFoodState value)? selectFood,
    TResult? Function(QuickAddFoodState value)? quickAddFood,
    TResult? Function(_AddingState value)? adding,
    TResult? Function(_SuccessState value)? success,
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
  const factory SelectFoodState({required final Food food}) =
      _$SelectFoodStateImpl;

  Food get food;
  @JsonKey(ignore: true)
  _$$SelectFoodStateImplCopyWith<_$SelectFoodStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuickAddFoodStateImplCopyWith<$Res> {
  factory _$$QuickAddFoodStateImplCopyWith(_$QuickAddFoodStateImpl value,
          $Res Function(_$QuickAddFoodStateImpl) then) =
      __$$QuickAddFoodStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuickAddFoodStateImplCopyWithImpl<$Res>
    extends _$AddColoriesStateCopyWithImpl<$Res, _$QuickAddFoodStateImpl>
    implements _$$QuickAddFoodStateImplCopyWith<$Res> {
  __$$QuickAddFoodStateImplCopyWithImpl(_$QuickAddFoodStateImpl _value,
      $Res Function(_$QuickAddFoodStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuickAddFoodStateImpl implements QuickAddFoodState {
  const _$QuickAddFoodStateImpl();

  @override
  String toString() {
    return 'AddColoriesState.quickAddFood()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuickAddFoodStateImpl);
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
    TResult? Function()? initial,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function()? adding,
    TResult? Function()? success,
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
    TResult? Function(InitialState value)? initial,
    TResult? Function(SelectFoodState value)? selectFood,
    TResult? Function(QuickAddFoodState value)? quickAddFood,
    TResult? Function(_AddingState value)? adding,
    TResult? Function(_SuccessState value)? success,
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
  const factory QuickAddFoodState() = _$QuickAddFoodStateImpl;
}

/// @nodoc
abstract class _$$AddingStateImplCopyWith<$Res> {
  factory _$$AddingStateImplCopyWith(
          _$AddingStateImpl value, $Res Function(_$AddingStateImpl) then) =
      __$$AddingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddingStateImplCopyWithImpl<$Res>
    extends _$AddColoriesStateCopyWithImpl<$Res, _$AddingStateImpl>
    implements _$$AddingStateImplCopyWith<$Res> {
  __$$AddingStateImplCopyWithImpl(
      _$AddingStateImpl _value, $Res Function(_$AddingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddingStateImpl implements _AddingState {
  const _$AddingStateImpl();

  @override
  String toString() {
    return 'AddColoriesState.adding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddingStateImpl);
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
    TResult? Function()? initial,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function()? adding,
    TResult? Function()? success,
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
    TResult? Function(InitialState value)? initial,
    TResult? Function(SelectFoodState value)? selectFood,
    TResult? Function(QuickAddFoodState value)? quickAddFood,
    TResult? Function(_AddingState value)? adding,
    TResult? Function(_SuccessState value)? success,
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
  const factory _AddingState() = _$AddingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$AddColoriesStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl();

  @override
  String toString() {
    return 'AddColoriesState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessStateImpl);
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
    TResult? Function()? initial,
    TResult? Function(Food food)? selectFood,
    TResult? Function()? quickAddFood,
    TResult? Function()? adding,
    TResult? Function()? success,
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
    TResult? Function(InitialState value)? initial,
    TResult? Function(SelectFoodState value)? selectFood,
    TResult? Function(QuickAddFoodState value)? quickAddFood,
    TResult? Function(_AddingState value)? adding,
    TResult? Function(_SuccessState value)? success,
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
  const factory _SuccessState() = _$SuccessStateImpl;
}
