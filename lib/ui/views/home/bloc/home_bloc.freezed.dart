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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    required TResult Function(List<DateTime> dates) datesWithLogs,
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
    TResult? Function(List<DateTime> dates)? datesWithLogs,
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
    TResult Function(List<DateTime> dates)? datesWithLogs,
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
    required TResult Function(_DatesWithLogsEvent value) datesWithLogs,
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
    TResult? Function(_DatesWithLogsEvent value)? datesWithLogs,
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
    TResult Function(_DatesWithLogsEvent value)? datesWithLogs,
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
abstract class _$$TodayHomeEventImplCopyWith<$Res> {
  factory _$$TodayHomeEventImplCopyWith(_$TodayHomeEventImpl value,
          $Res Function(_$TodayHomeEventImpl) then) =
      __$$TodayHomeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodayHomeEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$TodayHomeEventImpl>
    implements _$$TodayHomeEventImplCopyWith<$Res> {
  __$$TodayHomeEventImplCopyWithImpl(
      _$TodayHomeEventImpl _value, $Res Function(_$TodayHomeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodayHomeEventImpl implements TodayHomeEvent {
  _$TodayHomeEventImpl();

  @override
  String toString() {
    return 'HomeEvent.today()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodayHomeEventImpl);
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
    required TResult Function(List<DateTime> dates) datesWithLogs,
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
    TResult? Function(List<DateTime> dates)? datesWithLogs,
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
    TResult Function(List<DateTime> dates)? datesWithLogs,
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
    required TResult Function(_DatesWithLogsEvent value) datesWithLogs,
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
    TResult? Function(_DatesWithLogsEvent value)? datesWithLogs,
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
    TResult Function(_DatesWithLogsEvent value)? datesWithLogs,
    required TResult orElse(),
  }) {
    if (today != null) {
      return today(this);
    }
    return orElse();
  }
}

abstract class TodayHomeEvent implements HomeEvent {
  factory TodayHomeEvent() = _$TodayHomeEventImpl;
}

/// @nodoc
abstract class _$$SomeOtherDateHomeEventImplCopyWith<$Res> {
  factory _$$SomeOtherDateHomeEventImplCopyWith(
          _$SomeOtherDateHomeEventImpl value,
          $Res Function(_$SomeOtherDateHomeEventImpl) then) =
      __$$SomeOtherDateHomeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$SomeOtherDateHomeEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SomeOtherDateHomeEventImpl>
    implements _$$SomeOtherDateHomeEventImplCopyWith<$Res> {
  __$$SomeOtherDateHomeEventImplCopyWithImpl(
      _$SomeOtherDateHomeEventImpl _value,
      $Res Function(_$SomeOtherDateHomeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$SomeOtherDateHomeEventImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SomeOtherDateHomeEventImpl implements SomeOtherDateHomeEvent {
  _$SomeOtherDateHomeEventImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'HomeEvent.of(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SomeOtherDateHomeEventImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SomeOtherDateHomeEventImplCopyWith<_$SomeOtherDateHomeEventImpl>
      get copyWith => __$$SomeOtherDateHomeEventImplCopyWithImpl<
          _$SomeOtherDateHomeEventImpl>(this, _$identity);

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
    required TResult Function(List<DateTime> dates) datesWithLogs,
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
    TResult? Function(List<DateTime> dates)? datesWithLogs,
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
    TResult Function(List<DateTime> dates)? datesWithLogs,
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
    required TResult Function(_DatesWithLogsEvent value) datesWithLogs,
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
    TResult? Function(_DatesWithLogsEvent value)? datesWithLogs,
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
    TResult Function(_DatesWithLogsEvent value)? datesWithLogs,
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
      _$SomeOtherDateHomeEventImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$SomeOtherDateHomeEventImplCopyWith<_$SomeOtherDateHomeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeUpdateNutritionEventImplCopyWith<$Res> {
  factory _$$HomeUpdateNutritionEventImplCopyWith(
          _$HomeUpdateNutritionEventImpl value,
          $Res Function(_$HomeUpdateNutritionEventImpl) then) =
      __$$HomeUpdateNutritionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {double totalCarbs,
      double totalFat,
      double totalProtein,
      double totalCalories});
}

/// @nodoc
class __$$HomeUpdateNutritionEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeUpdateNutritionEventImpl>
    implements _$$HomeUpdateNutritionEventImplCopyWith<$Res> {
  __$$HomeUpdateNutritionEventImplCopyWithImpl(
      _$HomeUpdateNutritionEventImpl _value,
      $Res Function(_$HomeUpdateNutritionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCarbs = null,
    Object? totalFat = null,
    Object? totalProtein = null,
    Object? totalCalories = null,
  }) {
    return _then(_$HomeUpdateNutritionEventImpl(
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

class _$HomeUpdateNutritionEventImpl implements HomeUpdateNutritionEvent {
  _$HomeUpdateNutritionEventImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUpdateNutritionEventImpl &&
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
  _$$HomeUpdateNutritionEventImplCopyWith<_$HomeUpdateNutritionEventImpl>
      get copyWith => __$$HomeUpdateNutritionEventImplCopyWithImpl<
          _$HomeUpdateNutritionEventImpl>(this, _$identity);

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
    required TResult Function(List<DateTime> dates) datesWithLogs,
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
    TResult? Function(List<DateTime> dates)? datesWithLogs,
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
    TResult Function(List<DateTime> dates)? datesWithLogs,
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
    required TResult Function(_DatesWithLogsEvent value) datesWithLogs,
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
    TResult? Function(_DatesWithLogsEvent value)? datesWithLogs,
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
    TResult Function(_DatesWithLogsEvent value)? datesWithLogs,
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
      required final double totalCalories}) = _$HomeUpdateNutritionEventImpl;

  double get totalCarbs;
  double get totalFat;
  double get totalProtein;
  double get totalCalories;
  @JsonKey(ignore: true)
  _$$HomeUpdateNutritionEventImplCopyWith<_$HomeUpdateNutritionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBurnedCaloriesEventImplCopyWith<$Res> {
  factory _$$UpdateBurnedCaloriesEventImplCopyWith(
          _$UpdateBurnedCaloriesEventImpl value,
          $Res Function(_$UpdateBurnedCaloriesEventImpl) then) =
      __$$UpdateBurnedCaloriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({num burnedCalories});
}

/// @nodoc
class __$$UpdateBurnedCaloriesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateBurnedCaloriesEventImpl>
    implements _$$UpdateBurnedCaloriesEventImplCopyWith<$Res> {
  __$$UpdateBurnedCaloriesEventImplCopyWithImpl(
      _$UpdateBurnedCaloriesEventImpl _value,
      $Res Function(_$UpdateBurnedCaloriesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? burnedCalories = null,
  }) {
    return _then(_$UpdateBurnedCaloriesEventImpl(
      burnedCalories: null == burnedCalories
          ? _value.burnedCalories
          : burnedCalories // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$UpdateBurnedCaloriesEventImpl implements UpdateBurnedCaloriesEvent {
  _$UpdateBurnedCaloriesEventImpl({required this.burnedCalories});

  @override
  final num burnedCalories;

  @override
  String toString() {
    return 'HomeEvent.updateBurnedCaloriesEvent(burnedCalories: $burnedCalories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBurnedCaloriesEventImpl &&
            (identical(other.burnedCalories, burnedCalories) ||
                other.burnedCalories == burnedCalories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, burnedCalories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBurnedCaloriesEventImplCopyWith<_$UpdateBurnedCaloriesEventImpl>
      get copyWith => __$$UpdateBurnedCaloriesEventImplCopyWithImpl<
          _$UpdateBurnedCaloriesEventImpl>(this, _$identity);

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
    required TResult Function(List<DateTime> dates) datesWithLogs,
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
    TResult? Function(List<DateTime> dates)? datesWithLogs,
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
    TResult Function(List<DateTime> dates)? datesWithLogs,
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
    required TResult Function(_DatesWithLogsEvent value) datesWithLogs,
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
    TResult? Function(_DatesWithLogsEvent value)? datesWithLogs,
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
    TResult Function(_DatesWithLogsEvent value)? datesWithLogs,
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
      _$UpdateBurnedCaloriesEventImpl;

  num get burnedCalories;
  @JsonKey(ignore: true)
  _$$UpdateBurnedCaloriesEventImplCopyWith<_$UpdateBurnedCaloriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CopyDataEventImplCopyWith<$Res> {
  factory _$$CopyDataEventImplCopyWith(
          _$CopyDataEventImpl value, $Res Function(_$CopyDataEventImpl) then) =
      __$$CopyDataEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FoodLog? log});

  $FoodLogCopyWith<$Res>? get log;
}

/// @nodoc
class __$$CopyDataEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CopyDataEventImpl>
    implements _$$CopyDataEventImplCopyWith<$Res> {
  __$$CopyDataEventImplCopyWithImpl(
      _$CopyDataEventImpl _value, $Res Function(_$CopyDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? log = freezed,
  }) {
    return _then(_$CopyDataEventImpl(
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

class _$CopyDataEventImpl implements CopyDataEvent {
  _$CopyDataEventImpl(this.log);

  @override
  final FoodLog? log;

  @override
  String toString() {
    return 'HomeEvent.copyData(log: $log)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyDataEventImpl &&
            (identical(other.log, log) || other.log == log));
  }

  @override
  int get hashCode => Object.hash(runtimeType, log);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyDataEventImplCopyWith<_$CopyDataEventImpl> get copyWith =>
      __$$CopyDataEventImplCopyWithImpl<_$CopyDataEventImpl>(this, _$identity);

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
    required TResult Function(List<DateTime> dates) datesWithLogs,
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
    TResult? Function(List<DateTime> dates)? datesWithLogs,
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
    TResult Function(List<DateTime> dates)? datesWithLogs,
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
    required TResult Function(_DatesWithLogsEvent value) datesWithLogs,
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
    TResult? Function(_DatesWithLogsEvent value)? datesWithLogs,
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
    TResult Function(_DatesWithLogsEvent value)? datesWithLogs,
    required TResult orElse(),
  }) {
    if (copyData != null) {
      return copyData(this);
    }
    return orElse();
  }
}

abstract class CopyDataEvent implements HomeEvent {
  factory CopyDataEvent(final FoodLog? log) = _$CopyDataEventImpl;

  FoodLog? get log;
  @JsonKey(ignore: true)
  _$$CopyDataEventImplCopyWith<_$CopyDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatesWithLogsEventImplCopyWith<$Res> {
  factory _$$DatesWithLogsEventImplCopyWith(_$DatesWithLogsEventImpl value,
          $Res Function(_$DatesWithLogsEventImpl) then) =
      __$$DatesWithLogsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DateTime> dates});
}

/// @nodoc
class __$$DatesWithLogsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DatesWithLogsEventImpl>
    implements _$$DatesWithLogsEventImplCopyWith<$Res> {
  __$$DatesWithLogsEventImplCopyWithImpl(_$DatesWithLogsEventImpl _value,
      $Res Function(_$DatesWithLogsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = null,
  }) {
    return _then(_$DatesWithLogsEventImpl(
      null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$DatesWithLogsEventImpl implements _DatesWithLogsEvent {
  _$DatesWithLogsEventImpl(final List<DateTime> dates) : _dates = dates;

  final List<DateTime> _dates;
  @override
  List<DateTime> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  @override
  String toString() {
    return 'HomeEvent.datesWithLogs(dates: $dates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatesWithLogsEventImpl &&
            const DeepCollectionEquality().equals(other._dates, _dates));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatesWithLogsEventImplCopyWith<_$DatesWithLogsEventImpl> get copyWith =>
      __$$DatesWithLogsEventImplCopyWithImpl<_$DatesWithLogsEventImpl>(
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
    required TResult Function(List<DateTime> dates) datesWithLogs,
  }) {
    return datesWithLogs(dates);
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
    TResult? Function(List<DateTime> dates)? datesWithLogs,
  }) {
    return datesWithLogs?.call(dates);
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
    TResult Function(List<DateTime> dates)? datesWithLogs,
    required TResult orElse(),
  }) {
    if (datesWithLogs != null) {
      return datesWithLogs(dates);
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
    required TResult Function(_DatesWithLogsEvent value) datesWithLogs,
  }) {
    return datesWithLogs(this);
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
    TResult? Function(_DatesWithLogsEvent value)? datesWithLogs,
  }) {
    return datesWithLogs?.call(this);
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
    TResult Function(_DatesWithLogsEvent value)? datesWithLogs,
    required TResult orElse(),
  }) {
    if (datesWithLogs != null) {
      return datesWithLogs(this);
    }
    return orElse();
  }
}

abstract class _DatesWithLogsEvent implements HomeEvent {
  factory _DatesWithLogsEvent(final List<DateTime> dates) =
      _$DatesWithLogsEventImpl;

  List<DateTime> get dates;
  @JsonKey(ignore: true)
  _$$DatesWithLogsEventImplCopyWith<_$DatesWithLogsEventImpl> get copyWith =>
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
  List<DateTime> get datesWithLogs => throw _privateConstructorUsedError;

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
      FoodLog? copiedData,
      List<DateTime> datesWithLogs});

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
    Object? datesWithLogs = null,
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
      datesWithLogs: null == datesWithLogs
          ? _value.datesWithLogs
          : datesWithLogs // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
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
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      double totalCalories,
      double totalProtein,
      double totalCarbs,
      double totalFat,
      num totalBurnedCalories,
      FoodLog? copiedData,
      List<DateTime> datesWithLogs});

  @override
  $FoodLogCopyWith<$Res>? get copiedData;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
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
    Object? datesWithLogs = null,
  }) {
    return _then(_$HomeStateImpl(
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
      datesWithLogs: null == datesWithLogs
          ? _value._datesWithLogs
          : datesWithLogs // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {required this.date,
      this.totalCalories = 0,
      this.totalProtein = 0,
      this.totalCarbs = 0,
      this.totalFat = 0,
      this.totalBurnedCalories = 0.0,
      this.copiedData = null,
      final List<DateTime> datesWithLogs = const []})
      : _datesWithLogs = datesWithLogs;

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
  final List<DateTime> _datesWithLogs;
  @override
  @JsonKey()
  List<DateTime> get datesWithLogs {
    if (_datesWithLogs is EqualUnmodifiableListView) return _datesWithLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_datesWithLogs);
  }

  @override
  String toString() {
    return 'HomeState(date: $date, totalCalories: $totalCalories, totalProtein: $totalProtein, totalCarbs: $totalCarbs, totalFat: $totalFat, totalBurnedCalories: $totalBurnedCalories, copiedData: $copiedData, datesWithLogs: $datesWithLogs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
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
                other.copiedData == copiedData) &&
            const DeepCollectionEquality()
                .equals(other._datesWithLogs, _datesWithLogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      totalCalories,
      totalProtein,
      totalCarbs,
      totalFat,
      totalBurnedCalories,
      copiedData,
      const DeepCollectionEquality().hash(_datesWithLogs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {required final DateTime date,
      final double totalCalories,
      final double totalProtein,
      final double totalCarbs,
      final double totalFat,
      final num totalBurnedCalories,
      final FoodLog? copiedData,
      final List<DateTime> datesWithLogs}) = _$HomeStateImpl;

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
  List<DateTime> get datesWithLogs;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
