// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
    required TResult Function(double totalCarbs, double totalFat,
            double totalProtein, double totalCalories)
        updateNutrition,
    required TResult Function(num burnedCalories) updateBurnedCaloriesEvent,
    required TResult Function(FoodLog? log) copyData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? today,
    TResult? Function(DateTime date)? of,
    TResult? Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult? Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult? Function(FoodLog? log)? copyData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult Function(FoodLog? log)? copyData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
    required TResult Function(HomeUpdateNutritionEvent value) updateNutrition,
    required TResult Function(UpdateBurnedCaloriesEvent value)
        updateBurnedCaloriesEvent,
    required TResult Function(CopyDataEvent value) copyData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodayHomeEvent value)? today,
    TResult? Function(SomeOtherDateHomeEvent value)? of,
    TResult? Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult? Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult? Function(CopyDataEvent value)? copyData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult Function(CopyDataEvent value)? copyData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodayHomeEventCopyWith<$Res> {
  factory _$$TodayHomeEventCopyWith(
          _$TodayHomeEvent value, $Res Function(_$TodayHomeEvent) then) =
      __$$TodayHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodayHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$TodayHomeEvent>
    implements _$$TodayHomeEventCopyWith<$Res> {
  __$$TodayHomeEventCopyWithImpl(
      _$TodayHomeEvent _value, $Res Function(_$TodayHomeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodayHomeEvent implements TodayHomeEvent {
  _$TodayHomeEvent();

  @override
  String toString() {
    return 'HomeEvent.today()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodayHomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
    required TResult Function(double totalCarbs, double totalFat,
            double totalProtein, double totalCalories)
        updateNutrition,
    required TResult Function(num burnedCalories) updateBurnedCaloriesEvent,
    required TResult Function(FoodLog? log) copyData,
  }) {
    return today();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? today,
    TResult? Function(DateTime date)? of,
    TResult? Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult? Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult? Function(FoodLog? log)? copyData,
  }) {
    return today?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult Function(FoodLog? log)? copyData,
    required TResult orElse(),
  }) {
    if (today != null) {
      return today();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
    required TResult Function(HomeUpdateNutritionEvent value) updateNutrition,
    required TResult Function(UpdateBurnedCaloriesEvent value)
        updateBurnedCaloriesEvent,
    required TResult Function(CopyDataEvent value) copyData,
  }) {
    return today(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodayHomeEvent value)? today,
    TResult? Function(SomeOtherDateHomeEvent value)? of,
    TResult? Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult? Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult? Function(CopyDataEvent value)? copyData,
  }) {
    return today?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult Function(CopyDataEvent value)? copyData,
    required TResult orElse(),
  }) {
    if (today != null) {
      return today(this);
    }
    return orElse();
  }
}

abstract class TodayHomeEvent implements HomeEvent {
  factory TodayHomeEvent() = _$TodayHomeEvent;
}

/// @nodoc
abstract class _$$SomeOtherDateHomeEventCopyWith<$Res> {
  factory _$$SomeOtherDateHomeEventCopyWith(_$SomeOtherDateHomeEvent value,
          $Res Function(_$SomeOtherDateHomeEvent) then) =
      __$$SomeOtherDateHomeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$SomeOtherDateHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SomeOtherDateHomeEvent>
    implements _$$SomeOtherDateHomeEventCopyWith<$Res> {
  __$$SomeOtherDateHomeEventCopyWithImpl(_$SomeOtherDateHomeEvent _value,
      $Res Function(_$SomeOtherDateHomeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$SomeOtherDateHomeEvent(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SomeOtherDateHomeEvent implements SomeOtherDateHomeEvent {
  _$SomeOtherDateHomeEvent(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'HomeEvent.of(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SomeOtherDateHomeEvent &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SomeOtherDateHomeEventCopyWith<_$SomeOtherDateHomeEvent> get copyWith =>
      __$$SomeOtherDateHomeEventCopyWithImpl<_$SomeOtherDateHomeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
    required TResult Function(double totalCarbs, double totalFat,
            double totalProtein, double totalCalories)
        updateNutrition,
    required TResult Function(num burnedCalories) updateBurnedCaloriesEvent,
    required TResult Function(FoodLog? log) copyData,
  }) {
    return of(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? today,
    TResult? Function(DateTime date)? of,
    TResult? Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult? Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult? Function(FoodLog? log)? copyData,
  }) {
    return of?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult Function(FoodLog? log)? copyData,
    required TResult orElse(),
  }) {
    if (of != null) {
      return of(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
    required TResult Function(HomeUpdateNutritionEvent value) updateNutrition,
    required TResult Function(UpdateBurnedCaloriesEvent value)
        updateBurnedCaloriesEvent,
    required TResult Function(CopyDataEvent value) copyData,
  }) {
    return of(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodayHomeEvent value)? today,
    TResult? Function(SomeOtherDateHomeEvent value)? of,
    TResult? Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult? Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult? Function(CopyDataEvent value)? copyData,
  }) {
    return of?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult Function(CopyDataEvent value)? copyData,
    required TResult orElse(),
  }) {
    if (of != null) {
      return of(this);
    }
    return orElse();
  }
}

abstract class SomeOtherDateHomeEvent implements HomeEvent {
  factory SomeOtherDateHomeEvent(final DateTime date) =
      _$SomeOtherDateHomeEvent;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$SomeOtherDateHomeEventCopyWith<_$SomeOtherDateHomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeUpdateNutritionEventCopyWith<$Res> {
  factory _$$HomeUpdateNutritionEventCopyWith(_$HomeUpdateNutritionEvent value,
          $Res Function(_$HomeUpdateNutritionEvent) then) =
      __$$HomeUpdateNutritionEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {double totalCarbs,
      double totalFat,
      double totalProtein,
      double totalCalories});
}

/// @nodoc
class __$$HomeUpdateNutritionEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeUpdateNutritionEvent>
    implements _$$HomeUpdateNutritionEventCopyWith<$Res> {
  __$$HomeUpdateNutritionEventCopyWithImpl(_$HomeUpdateNutritionEvent _value,
      $Res Function(_$HomeUpdateNutritionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCarbs = null,
    Object? totalFat = null,
    Object? totalProtein = null,
    Object? totalCalories = null,
  }) {
    return _then(_$HomeUpdateNutritionEvent(
      totalCarbs: null == totalCarbs
          ? _value.totalCarbs
          : totalCarbs // ignore: cast_nullable_to_non_nullable
              as double,
      totalFat: null == totalFat
          ? _value.totalFat
          : totalFat // ignore: cast_nullable_to_non_nullable
              as double,
      totalProtein: null == totalProtein
          ? _value.totalProtein
          : totalProtein // ignore: cast_nullable_to_non_nullable
              as double,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$HomeUpdateNutritionEvent implements HomeUpdateNutritionEvent {
  _$HomeUpdateNutritionEvent(
      {required this.totalCarbs,
      required this.totalFat,
      required this.totalProtein,
      required this.totalCalories});

  @override
  final double totalCarbs;
  @override
  final double totalFat;
  @override
  final double totalProtein;
  @override
  final double totalCalories;

  @override
  String toString() {
    return 'HomeEvent.updateNutrition(totalCarbs: $totalCarbs, totalFat: $totalFat, totalProtein: $totalProtein, totalCalories: $totalCalories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUpdateNutritionEvent &&
            (identical(other.totalCarbs, totalCarbs) ||
                other.totalCarbs == totalCarbs) &&
            (identical(other.totalFat, totalFat) ||
                other.totalFat == totalFat) &&
            (identical(other.totalProtein, totalProtein) ||
                other.totalProtein == totalProtein) &&
            (identical(other.totalCalories, totalCalories) ||
                other.totalCalories == totalCalories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalCarbs, totalFat, totalProtein, totalCalories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeUpdateNutritionEventCopyWith<_$HomeUpdateNutritionEvent>
      get copyWith =>
          __$$HomeUpdateNutritionEventCopyWithImpl<_$HomeUpdateNutritionEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
    required TResult Function(double totalCarbs, double totalFat,
            double totalProtein, double totalCalories)
        updateNutrition,
    required TResult Function(num burnedCalories) updateBurnedCaloriesEvent,
    required TResult Function(FoodLog? log) copyData,
  }) {
    return updateNutrition(totalCarbs, totalFat, totalProtein, totalCalories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? today,
    TResult? Function(DateTime date)? of,
    TResult? Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult? Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult? Function(FoodLog? log)? copyData,
  }) {
    return updateNutrition?.call(
        totalCarbs, totalFat, totalProtein, totalCalories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult Function(FoodLog? log)? copyData,
    required TResult orElse(),
  }) {
    if (updateNutrition != null) {
      return updateNutrition(totalCarbs, totalFat, totalProtein, totalCalories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
    required TResult Function(HomeUpdateNutritionEvent value) updateNutrition,
    required TResult Function(UpdateBurnedCaloriesEvent value)
        updateBurnedCaloriesEvent,
    required TResult Function(CopyDataEvent value) copyData,
  }) {
    return updateNutrition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodayHomeEvent value)? today,
    TResult? Function(SomeOtherDateHomeEvent value)? of,
    TResult? Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult? Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult? Function(CopyDataEvent value)? copyData,
  }) {
    return updateNutrition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult Function(CopyDataEvent value)? copyData,
    required TResult orElse(),
  }) {
    if (updateNutrition != null) {
      return updateNutrition(this);
    }
    return orElse();
  }
}

abstract class HomeUpdateNutritionEvent implements HomeEvent {
  factory HomeUpdateNutritionEvent(
      {required final double totalCarbs,
      required final double totalFat,
      required final double totalProtein,
      required final double totalCalories}) = _$HomeUpdateNutritionEvent;

  double get totalCarbs;
  double get totalFat;
  double get totalProtein;
  double get totalCalories;
  @JsonKey(ignore: true)
  _$$HomeUpdateNutritionEventCopyWith<_$HomeUpdateNutritionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBurnedCaloriesEventCopyWith<$Res> {
  factory _$$UpdateBurnedCaloriesEventCopyWith(
          _$UpdateBurnedCaloriesEvent value,
          $Res Function(_$UpdateBurnedCaloriesEvent) then) =
      __$$UpdateBurnedCaloriesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({num burnedCalories});
}

/// @nodoc
class __$$UpdateBurnedCaloriesEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateBurnedCaloriesEvent>
    implements _$$UpdateBurnedCaloriesEventCopyWith<$Res> {
  __$$UpdateBurnedCaloriesEventCopyWithImpl(_$UpdateBurnedCaloriesEvent _value,
      $Res Function(_$UpdateBurnedCaloriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? burnedCalories = null,
  }) {
    return _then(_$UpdateBurnedCaloriesEvent(
      burnedCalories: null == burnedCalories
          ? _value.burnedCalories
          : burnedCalories // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$UpdateBurnedCaloriesEvent implements UpdateBurnedCaloriesEvent {
  _$UpdateBurnedCaloriesEvent({required this.burnedCalories});

  @override
  final num burnedCalories;

  @override
  String toString() {
    return 'HomeEvent.updateBurnedCaloriesEvent(burnedCalories: $burnedCalories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBurnedCaloriesEvent &&
            (identical(other.burnedCalories, burnedCalories) ||
                other.burnedCalories == burnedCalories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, burnedCalories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBurnedCaloriesEventCopyWith<_$UpdateBurnedCaloriesEvent>
      get copyWith => __$$UpdateBurnedCaloriesEventCopyWithImpl<
          _$UpdateBurnedCaloriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
    required TResult Function(double totalCarbs, double totalFat,
            double totalProtein, double totalCalories)
        updateNutrition,
    required TResult Function(num burnedCalories) updateBurnedCaloriesEvent,
    required TResult Function(FoodLog? log) copyData,
  }) {
    return updateBurnedCaloriesEvent(burnedCalories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? today,
    TResult? Function(DateTime date)? of,
    TResult? Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult? Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult? Function(FoodLog? log)? copyData,
  }) {
    return updateBurnedCaloriesEvent?.call(burnedCalories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult Function(FoodLog? log)? copyData,
    required TResult orElse(),
  }) {
    if (updateBurnedCaloriesEvent != null) {
      return updateBurnedCaloriesEvent(burnedCalories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
    required TResult Function(HomeUpdateNutritionEvent value) updateNutrition,
    required TResult Function(UpdateBurnedCaloriesEvent value)
        updateBurnedCaloriesEvent,
    required TResult Function(CopyDataEvent value) copyData,
  }) {
    return updateBurnedCaloriesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodayHomeEvent value)? today,
    TResult? Function(SomeOtherDateHomeEvent value)? of,
    TResult? Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult? Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult? Function(CopyDataEvent value)? copyData,
  }) {
    return updateBurnedCaloriesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult Function(CopyDataEvent value)? copyData,
    required TResult orElse(),
  }) {
    if (updateBurnedCaloriesEvent != null) {
      return updateBurnedCaloriesEvent(this);
    }
    return orElse();
  }
}

abstract class UpdateBurnedCaloriesEvent implements HomeEvent {
  factory UpdateBurnedCaloriesEvent({required final num burnedCalories}) =
      _$UpdateBurnedCaloriesEvent;

  num get burnedCalories;
  @JsonKey(ignore: true)
  _$$UpdateBurnedCaloriesEventCopyWith<_$UpdateBurnedCaloriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CopyDataEventCopyWith<$Res> {
  factory _$$CopyDataEventCopyWith(
          _$CopyDataEvent value, $Res Function(_$CopyDataEvent) then) =
      __$$CopyDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({FoodLog? log});

  $FoodLogCopyWith<$Res>? get log;
}

/// @nodoc
class __$$CopyDataEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CopyDataEvent>
    implements _$$CopyDataEventCopyWith<$Res> {
  __$$CopyDataEventCopyWithImpl(
      _$CopyDataEvent _value, $Res Function(_$CopyDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? log = freezed,
  }) {
    return _then(_$CopyDataEvent(
      freezed == log
          ? _value.log
          : log // ignore: cast_nullable_to_non_nullable
              as FoodLog?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodLogCopyWith<$Res>? get log {
    if (_value.log == null) {
      return null;
    }

    return $FoodLogCopyWith<$Res>(_value.log!, (value) {
      return _then(_value.copyWith(log: value));
    });
  }
}

/// @nodoc

class _$CopyDataEvent implements CopyDataEvent {
  _$CopyDataEvent(this.log);

  @override
  final FoodLog? log;

  @override
  String toString() {
    return 'HomeEvent.copyData(log: $log)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyDataEvent &&
            (identical(other.log, log) || other.log == log));
  }

  @override
  int get hashCode => Object.hash(runtimeType, log);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyDataEventCopyWith<_$CopyDataEvent> get copyWith =>
      __$$CopyDataEventCopyWithImpl<_$CopyDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
    required TResult Function(double totalCarbs, double totalFat,
            double totalProtein, double totalCalories)
        updateNutrition,
    required TResult Function(num burnedCalories) updateBurnedCaloriesEvent,
    required TResult Function(FoodLog? log) copyData,
  }) {
    return copyData(log);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? today,
    TResult? Function(DateTime date)? of,
    TResult? Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult? Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult? Function(FoodLog? log)? copyData,
  }) {
    return copyData?.call(log);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(double totalCarbs, double totalFat, double totalProtein,
            double totalCalories)?
        updateNutrition,
    TResult Function(num burnedCalories)? updateBurnedCaloriesEvent,
    TResult Function(FoodLog? log)? copyData,
    required TResult orElse(),
  }) {
    if (copyData != null) {
      return copyData(log);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
    required TResult Function(HomeUpdateNutritionEvent value) updateNutrition,
    required TResult Function(UpdateBurnedCaloriesEvent value)
        updateBurnedCaloriesEvent,
    required TResult Function(CopyDataEvent value) copyData,
  }) {
    return copyData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodayHomeEvent value)? today,
    TResult? Function(SomeOtherDateHomeEvent value)? of,
    TResult? Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult? Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult? Function(CopyDataEvent value)? copyData,
  }) {
    return copyData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
    TResult Function(UpdateBurnedCaloriesEvent value)?
        updateBurnedCaloriesEvent,
    TResult Function(CopyDataEvent value)? copyData,
    required TResult orElse(),
  }) {
    if (copyData != null) {
      return copyData(this);
    }
    return orElse();
  }
}

abstract class CopyDataEvent implements HomeEvent {
  factory CopyDataEvent(final FoodLog? log) = _$CopyDataEvent;

  FoodLog? get log;
  @JsonKey(ignore: true)
  _$$CopyDataEventCopyWith<_$CopyDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  DateTime get date => throw _privateConstructorUsedError;
  double get totalCalories => throw _privateConstructorUsedError;
  double get totalProtein => throw _privateConstructorUsedError;
  double get totalCarbs => throw _privateConstructorUsedError;
  double get totalFat =>
      throw _privateConstructorUsedError; // @Default(false) bool hadExtraCarbs,
// @Default(false) bool hadExtraFat,
// @Default(false) bool hadExtraProtein,
  num get totalBurnedCalories => throw _privateConstructorUsedError;
  FoodLog? get copiedData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {DateTime date,
      double totalCalories,
      double totalProtein,
      double totalCarbs,
      double totalFat,
      num totalBurnedCalories,
      FoodLog? copiedData});

  $FoodLogCopyWith<$Res>? get copiedData;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? totalCalories = null,
    Object? totalProtein = null,
    Object? totalCarbs = null,
    Object? totalFat = null,
    Object? totalBurnedCalories = null,
    Object? copiedData = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as double,
      totalProtein: null == totalProtein
          ? _value.totalProtein
          : totalProtein // ignore: cast_nullable_to_non_nullable
              as double,
      totalCarbs: null == totalCarbs
          ? _value.totalCarbs
          : totalCarbs // ignore: cast_nullable_to_non_nullable
              as double,
      totalFat: null == totalFat
          ? _value.totalFat
          : totalFat // ignore: cast_nullable_to_non_nullable
              as double,
      totalBurnedCalories: null == totalBurnedCalories
          ? _value.totalBurnedCalories
          : totalBurnedCalories // ignore: cast_nullable_to_non_nullable
              as num,
      copiedData: freezed == copiedData
          ? _value.copiedData
          : copiedData // ignore: cast_nullable_to_non_nullable
              as FoodLog?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodLogCopyWith<$Res>? get copiedData {
    if (_value.copiedData == null) {
      return null;
    }

    return $FoodLogCopyWith<$Res>(_value.copiedData!, (value) {
      return _then(_value.copyWith(copiedData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      double totalCalories,
      double totalProtein,
      double totalCarbs,
      double totalFat,
      num totalBurnedCalories,
      FoodLog? copiedData});

  @override
  $FoodLogCopyWith<$Res>? get copiedData;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? totalCalories = null,
    Object? totalProtein = null,
    Object? totalCarbs = null,
    Object? totalFat = null,
    Object? totalBurnedCalories = null,
    Object? copiedData = freezed,
  }) {
    return _then(_$_HomeState(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as double,
      totalProtein: null == totalProtein
          ? _value.totalProtein
          : totalProtein // ignore: cast_nullable_to_non_nullable
              as double,
      totalCarbs: null == totalCarbs
          ? _value.totalCarbs
          : totalCarbs // ignore: cast_nullable_to_non_nullable
              as double,
      totalFat: null == totalFat
          ? _value.totalFat
          : totalFat // ignore: cast_nullable_to_non_nullable
              as double,
      totalBurnedCalories: null == totalBurnedCalories
          ? _value.totalBurnedCalories
          : totalBurnedCalories // ignore: cast_nullable_to_non_nullable
              as num,
      copiedData: freezed == copiedData
          ? _value.copiedData
          : copiedData // ignore: cast_nullable_to_non_nullable
              as FoodLog?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {required this.date,
      this.totalCalories = 0,
      this.totalProtein = 0,
      this.totalCarbs = 0,
      this.totalFat = 0,
      this.totalBurnedCalories = 0.0,
      this.copiedData = null});

  @override
  final DateTime date;
  @override
  @JsonKey()
  final double totalCalories;
  @override
  @JsonKey()
  final double totalProtein;
  @override
  @JsonKey()
  final double totalCarbs;
  @override
  @JsonKey()
  final double totalFat;
// @Default(false) bool hadExtraCarbs,
// @Default(false) bool hadExtraFat,
// @Default(false) bool hadExtraProtein,
  @override
  @JsonKey()
  final num totalBurnedCalories;
  @override
  @JsonKey()
  final FoodLog? copiedData;

  @override
  String toString() {
    return 'HomeState(date: $date, totalCalories: $totalCalories, totalProtein: $totalProtein, totalCarbs: $totalCarbs, totalFat: $totalFat, totalBurnedCalories: $totalBurnedCalories, copiedData: $copiedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalCalories, totalCalories) ||
                other.totalCalories == totalCalories) &&
            (identical(other.totalProtein, totalProtein) ||
                other.totalProtein == totalProtein) &&
            (identical(other.totalCarbs, totalCarbs) ||
                other.totalCarbs == totalCarbs) &&
            (identical(other.totalFat, totalFat) ||
                other.totalFat == totalFat) &&
            (identical(other.totalBurnedCalories, totalBurnedCalories) ||
                other.totalBurnedCalories == totalBurnedCalories) &&
            (identical(other.copiedData, copiedData) ||
                other.copiedData == copiedData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, totalCalories,
      totalProtein, totalCarbs, totalFat, totalBurnedCalories, copiedData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {required final DateTime date,
      final double totalCalories,
      final double totalProtein,
      final double totalCarbs,
      final double totalFat,
      final num totalBurnedCalories,
      final FoodLog? copiedData}) = _$_HomeState;

  @override
  DateTime get date;
  @override
  double get totalCalories;
  @override
  double get totalProtein;
  @override
  double get totalCarbs;
  @override
  double get totalFat;
  @override // @Default(false) bool hadExtraCarbs,
// @Default(false) bool hadExtraFat,
// @Default(false) bool hadExtraProtein,
  num get totalBurnedCalories;
  @override
  FoodLog? get copiedData;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
