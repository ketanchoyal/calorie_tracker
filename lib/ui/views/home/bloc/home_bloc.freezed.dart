// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
    required TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)
        updateNutrition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)?
        updateNutrition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)?
        updateNutrition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
    required TResult Function(HomeUpdateNutritionEvent value) updateNutrition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$TodayHomeEventCopyWith<$Res> {
  factory _$$TodayHomeEventCopyWith(
          _$TodayHomeEvent value, $Res Function(_$TodayHomeEvent) then) =
      __$$TodayHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodayHomeEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$TodayHomeEventCopyWith<$Res> {
  __$$TodayHomeEventCopyWithImpl(
      _$TodayHomeEvent _value, $Res Function(_$TodayHomeEvent) _then)
      : super(_value, (v) => _then(v as _$TodayHomeEvent));

  @override
  _$TodayHomeEvent get _value => super._value as _$TodayHomeEvent;
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
    required TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)
        updateNutrition,
  }) {
    return today();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)?
        updateNutrition,
  }) {
    return today?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)?
        updateNutrition,
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
  }) {
    return today(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
  }) {
    return today?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
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
  $Res call({DateTime date});
}

/// @nodoc
class __$$SomeOtherDateHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$SomeOtherDateHomeEventCopyWith<$Res> {
  __$$SomeOtherDateHomeEventCopyWithImpl(_$SomeOtherDateHomeEvent _value,
      $Res Function(_$SomeOtherDateHomeEvent) _then)
      : super(_value, (v) => _then(v as _$SomeOtherDateHomeEvent));

  @override
  _$SomeOtherDateHomeEvent get _value =>
      super._value as _$SomeOtherDateHomeEvent;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$SomeOtherDateHomeEvent(
      date == freezed
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
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$SomeOtherDateHomeEventCopyWith<_$SomeOtherDateHomeEvent> get copyWith =>
      __$$SomeOtherDateHomeEventCopyWithImpl<_$SomeOtherDateHomeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
    required TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)
        updateNutrition,
  }) {
    return of(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)?
        updateNutrition,
  }) {
    return of?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)?
        updateNutrition,
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
  }) {
    return of(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
  }) {
    return of?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
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

  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SomeOtherDateHomeEventCopyWith<_$SomeOtherDateHomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeUpdateNutritionEventCopyWith<$Res> {
  factory _$$HomeUpdateNutritionEventCopyWith(_$HomeUpdateNutritionEvent value,
          $Res Function(_$HomeUpdateNutritionEvent) then) =
      __$$HomeUpdateNutritionEventCopyWithImpl<$Res>;
  $Res call(
      {double totalCarbs,
      double totalFat,
      double totalProtein,
      double totalCalories,
      bool hadExtraCarbs,
      bool hadExtraFat,
      bool hadExtraProtein});
}

/// @nodoc
class __$$HomeUpdateNutritionEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$HomeUpdateNutritionEventCopyWith<$Res> {
  __$$HomeUpdateNutritionEventCopyWithImpl(_$HomeUpdateNutritionEvent _value,
      $Res Function(_$HomeUpdateNutritionEvent) _then)
      : super(_value, (v) => _then(v as _$HomeUpdateNutritionEvent));

  @override
  _$HomeUpdateNutritionEvent get _value =>
      super._value as _$HomeUpdateNutritionEvent;

  @override
  $Res call({
    Object? totalCarbs = freezed,
    Object? totalFat = freezed,
    Object? totalProtein = freezed,
    Object? totalCalories = freezed,
    Object? hadExtraCarbs = freezed,
    Object? hadExtraFat = freezed,
    Object? hadExtraProtein = freezed,
  }) {
    return _then(_$HomeUpdateNutritionEvent(
      totalCarbs: totalCarbs == freezed
          ? _value.totalCarbs
          : totalCarbs // ignore: cast_nullable_to_non_nullable
              as double,
      totalFat: totalFat == freezed
          ? _value.totalFat
          : totalFat // ignore: cast_nullable_to_non_nullable
              as double,
      totalProtein: totalProtein == freezed
          ? _value.totalProtein
          : totalProtein // ignore: cast_nullable_to_non_nullable
              as double,
      totalCalories: totalCalories == freezed
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as double,
      hadExtraCarbs: hadExtraCarbs == freezed
          ? _value.hadExtraCarbs
          : hadExtraCarbs // ignore: cast_nullable_to_non_nullable
              as bool,
      hadExtraFat: hadExtraFat == freezed
          ? _value.hadExtraFat
          : hadExtraFat // ignore: cast_nullable_to_non_nullable
              as bool,
      hadExtraProtein: hadExtraProtein == freezed
          ? _value.hadExtraProtein
          : hadExtraProtein // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeUpdateNutritionEvent implements HomeUpdateNutritionEvent {
  _$HomeUpdateNutritionEvent(
      {required this.totalCarbs,
      required this.totalFat,
      required this.totalProtein,
      required this.totalCalories,
      required this.hadExtraCarbs,
      required this.hadExtraFat,
      required this.hadExtraProtein});

  @override
  final double totalCarbs;
  @override
  final double totalFat;
  @override
  final double totalProtein;
  @override
  final double totalCalories;
  @override
  final bool hadExtraCarbs;
  @override
  final bool hadExtraFat;
  @override
  final bool hadExtraProtein;

  @override
  String toString() {
    return 'HomeEvent.updateNutrition(totalCarbs: $totalCarbs, totalFat: $totalFat, totalProtein: $totalProtein, totalCalories: $totalCalories, hadExtraCarbs: $hadExtraCarbs, hadExtraFat: $hadExtraFat, hadExtraProtein: $hadExtraProtein)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUpdateNutritionEvent &&
            const DeepCollectionEquality()
                .equals(other.totalCarbs, totalCarbs) &&
            const DeepCollectionEquality().equals(other.totalFat, totalFat) &&
            const DeepCollectionEquality()
                .equals(other.totalProtein, totalProtein) &&
            const DeepCollectionEquality()
                .equals(other.totalCalories, totalCalories) &&
            const DeepCollectionEquality()
                .equals(other.hadExtraCarbs, hadExtraCarbs) &&
            const DeepCollectionEquality()
                .equals(other.hadExtraFat, hadExtraFat) &&
            const DeepCollectionEquality()
                .equals(other.hadExtraProtein, hadExtraProtein));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalCarbs),
      const DeepCollectionEquality().hash(totalFat),
      const DeepCollectionEquality().hash(totalProtein),
      const DeepCollectionEquality().hash(totalCalories),
      const DeepCollectionEquality().hash(hadExtraCarbs),
      const DeepCollectionEquality().hash(hadExtraFat),
      const DeepCollectionEquality().hash(hadExtraProtein));

  @JsonKey(ignore: true)
  @override
  _$$HomeUpdateNutritionEventCopyWith<_$HomeUpdateNutritionEvent>
      get copyWith =>
          __$$HomeUpdateNutritionEventCopyWithImpl<_$HomeUpdateNutritionEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() today,
    required TResult Function(DateTime date) of,
    required TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)
        updateNutrition,
  }) {
    return updateNutrition(totalCarbs, totalFat, totalProtein, totalCalories,
        hadExtraCarbs, hadExtraFat, hadExtraProtein);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)?
        updateNutrition,
  }) {
    return updateNutrition?.call(totalCarbs, totalFat, totalProtein,
        totalCalories, hadExtraCarbs, hadExtraFat, hadExtraProtein);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? today,
    TResult Function(DateTime date)? of,
    TResult Function(
            double totalCarbs,
            double totalFat,
            double totalProtein,
            double totalCalories,
            bool hadExtraCarbs,
            bool hadExtraFat,
            bool hadExtraProtein)?
        updateNutrition,
    required TResult orElse(),
  }) {
    if (updateNutrition != null) {
      return updateNutrition(totalCarbs, totalFat, totalProtein, totalCalories,
          hadExtraCarbs, hadExtraFat, hadExtraProtein);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodayHomeEvent value) today,
    required TResult Function(SomeOtherDateHomeEvent value) of,
    required TResult Function(HomeUpdateNutritionEvent value) updateNutrition,
  }) {
    return updateNutrition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
  }) {
    return updateNutrition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodayHomeEvent value)? today,
    TResult Function(SomeOtherDateHomeEvent value)? of,
    TResult Function(HomeUpdateNutritionEvent value)? updateNutrition,
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
      required final double totalCalories,
      required final bool hadExtraCarbs,
      required final bool hadExtraFat,
      required final bool hadExtraProtein}) = _$HomeUpdateNutritionEvent;

  double get totalCarbs => throw _privateConstructorUsedError;
  double get totalFat => throw _privateConstructorUsedError;
  double get totalProtein => throw _privateConstructorUsedError;
  double get totalCalories => throw _privateConstructorUsedError;
  bool get hadExtraCarbs => throw _privateConstructorUsedError;
  bool get hadExtraFat => throw _privateConstructorUsedError;
  bool get hadExtraProtein => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HomeUpdateNutritionEventCopyWith<_$HomeUpdateNutritionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  DateTime get date => throw _privateConstructorUsedError;
  double get totalCalories => throw _privateConstructorUsedError;
  double get totalProtein => throw _privateConstructorUsedError;
  double get totalCarbs => throw _privateConstructorUsedError;
  double get totalFat => throw _privateConstructorUsedError;
  bool get hadExtraCarbs => throw _privateConstructorUsedError;
  bool get hadExtraFat => throw _privateConstructorUsedError;
  bool get hadExtraProtein => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      double totalCalories,
      double totalProtein,
      double totalCarbs,
      double totalFat,
      bool hadExtraCarbs,
      bool hadExtraFat,
      bool hadExtraProtein});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? totalCalories = freezed,
    Object? totalProtein = freezed,
    Object? totalCarbs = freezed,
    Object? totalFat = freezed,
    Object? hadExtraCarbs = freezed,
    Object? hadExtraFat = freezed,
    Object? hadExtraProtein = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCalories: totalCalories == freezed
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as double,
      totalProtein: totalProtein == freezed
          ? _value.totalProtein
          : totalProtein // ignore: cast_nullable_to_non_nullable
              as double,
      totalCarbs: totalCarbs == freezed
          ? _value.totalCarbs
          : totalCarbs // ignore: cast_nullable_to_non_nullable
              as double,
      totalFat: totalFat == freezed
          ? _value.totalFat
          : totalFat // ignore: cast_nullable_to_non_nullable
              as double,
      hadExtraCarbs: hadExtraCarbs == freezed
          ? _value.hadExtraCarbs
          : hadExtraCarbs // ignore: cast_nullable_to_non_nullable
              as bool,
      hadExtraFat: hadExtraFat == freezed
          ? _value.hadExtraFat
          : hadExtraFat // ignore: cast_nullable_to_non_nullable
              as bool,
      hadExtraProtein: hadExtraProtein == freezed
          ? _value.hadExtraProtein
          : hadExtraProtein // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      double totalCalories,
      double totalProtein,
      double totalCarbs,
      double totalFat,
      bool hadExtraCarbs,
      bool hadExtraFat,
      bool hadExtraProtein});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? date = freezed,
    Object? totalCalories = freezed,
    Object? totalProtein = freezed,
    Object? totalCarbs = freezed,
    Object? totalFat = freezed,
    Object? hadExtraCarbs = freezed,
    Object? hadExtraFat = freezed,
    Object? hadExtraProtein = freezed,
  }) {
    return _then(_$_HomeState(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCalories: totalCalories == freezed
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as double,
      totalProtein: totalProtein == freezed
          ? _value.totalProtein
          : totalProtein // ignore: cast_nullable_to_non_nullable
              as double,
      totalCarbs: totalCarbs == freezed
          ? _value.totalCarbs
          : totalCarbs // ignore: cast_nullable_to_non_nullable
              as double,
      totalFat: totalFat == freezed
          ? _value.totalFat
          : totalFat // ignore: cast_nullable_to_non_nullable
              as double,
      hadExtraCarbs: hadExtraCarbs == freezed
          ? _value.hadExtraCarbs
          : hadExtraCarbs // ignore: cast_nullable_to_non_nullable
              as bool,
      hadExtraFat: hadExtraFat == freezed
          ? _value.hadExtraFat
          : hadExtraFat // ignore: cast_nullable_to_non_nullable
              as bool,
      hadExtraProtein: hadExtraProtein == freezed
          ? _value.hadExtraProtein
          : hadExtraProtein // ignore: cast_nullable_to_non_nullable
              as bool,
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
      this.hadExtraCarbs = false,
      this.hadExtraFat = false,
      this.hadExtraProtein = false});

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
  @override
  @JsonKey()
  final bool hadExtraCarbs;
  @override
  @JsonKey()
  final bool hadExtraFat;
  @override
  @JsonKey()
  final bool hadExtraProtein;

  @override
  String toString() {
    return 'HomeState(date: $date, totalCalories: $totalCalories, totalProtein: $totalProtein, totalCarbs: $totalCarbs, totalFat: $totalFat, hadExtraCarbs: $hadExtraCarbs, hadExtraFat: $hadExtraFat, hadExtraProtein: $hadExtraProtein)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.totalCalories, totalCalories) &&
            const DeepCollectionEquality()
                .equals(other.totalProtein, totalProtein) &&
            const DeepCollectionEquality()
                .equals(other.totalCarbs, totalCarbs) &&
            const DeepCollectionEquality().equals(other.totalFat, totalFat) &&
            const DeepCollectionEquality()
                .equals(other.hadExtraCarbs, hadExtraCarbs) &&
            const DeepCollectionEquality()
                .equals(other.hadExtraFat, hadExtraFat) &&
            const DeepCollectionEquality()
                .equals(other.hadExtraProtein, hadExtraProtein));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(totalCalories),
      const DeepCollectionEquality().hash(totalProtein),
      const DeepCollectionEquality().hash(totalCarbs),
      const DeepCollectionEquality().hash(totalFat),
      const DeepCollectionEquality().hash(hadExtraCarbs),
      const DeepCollectionEquality().hash(hadExtraFat),
      const DeepCollectionEquality().hash(hadExtraProtein));

  @JsonKey(ignore: true)
  @override
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
      final bool hadExtraCarbs,
      final bool hadExtraFat,
      final bool hadExtraProtein}) = _$_HomeState;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  double get totalCalories => throw _privateConstructorUsedError;
  @override
  double get totalProtein => throw _privateConstructorUsedError;
  @override
  double get totalCarbs => throw _privateConstructorUsedError;
  @override
  double get totalFat => throw _privateConstructorUsedError;
  @override
  bool get hadExtraCarbs => throw _privateConstructorUsedError;
  @override
  bool get hadExtraFat => throw _privateConstructorUsedError;
  @override
  bool get hadExtraProtein => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
