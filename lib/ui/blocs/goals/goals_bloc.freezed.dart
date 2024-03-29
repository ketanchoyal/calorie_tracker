// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goals_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoalsState {
  double get caloriesGoal => throw _privateConstructorUsedError;
  double get proteinGoal => throw _privateConstructorUsedError;
  double get carbsGoal => throw _privateConstructorUsedError;
  double get fatGoal => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double caloriesGoal, double proteinGoal,
            double carbsGoal, double fatGoal)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoal)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoal)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoalsStateCopyWith<GoalsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsStateCopyWith<$Res> {
  factory $GoalsStateCopyWith(
          GoalsState value, $Res Function(GoalsState) then) =
      _$GoalsStateCopyWithImpl<$Res, GoalsState>;
  @useResult
  $Res call(
      {double caloriesGoal,
      double proteinGoal,
      double carbsGoal,
      double fatGoal});
}

/// @nodoc
class _$GoalsStateCopyWithImpl<$Res, $Val extends GoalsState>
    implements $GoalsStateCopyWith<$Res> {
  _$GoalsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caloriesGoal = null,
    Object? proteinGoal = null,
    Object? carbsGoal = null,
    Object? fatGoal = null,
  }) {
    return _then(_value.copyWith(
      caloriesGoal: null == caloriesGoal
          ? _value.caloriesGoal
          : caloriesGoal // ignore: cast_nullable_to_non_nullable
              as double,
      proteinGoal: null == proteinGoal
          ? _value.proteinGoal
          : proteinGoal // ignore: cast_nullable_to_non_nullable
              as double,
      carbsGoal: null == carbsGoal
          ? _value.carbsGoal
          : carbsGoal // ignore: cast_nullable_to_non_nullable
              as double,
      fatGoal: null == fatGoal
          ? _value.fatGoal
          : fatGoal // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GoalsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double caloriesGoal,
      double proteinGoal,
      double carbsGoal,
      double fatGoal});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GoalsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caloriesGoal = null,
    Object? proteinGoal = null,
    Object? carbsGoal = null,
    Object? fatGoal = null,
  }) {
    return _then(_$InitialImpl(
      caloriesGoal: null == caloriesGoal
          ? _value.caloriesGoal
          : caloriesGoal // ignore: cast_nullable_to_non_nullable
              as double,
      proteinGoal: null == proteinGoal
          ? _value.proteinGoal
          : proteinGoal // ignore: cast_nullable_to_non_nullable
              as double,
      carbsGoal: null == carbsGoal
          ? _value.carbsGoal
          : carbsGoal // ignore: cast_nullable_to_non_nullable
              as double,
      fatGoal: null == fatGoal
          ? _value.fatGoal
          : fatGoal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.caloriesGoal = 0,
      this.proteinGoal = 0,
      this.carbsGoal = 0,
      this.fatGoal = 0});

  @override
  @JsonKey()
  final double caloriesGoal;
  @override
  @JsonKey()
  final double proteinGoal;
  @override
  @JsonKey()
  final double carbsGoal;
  @override
  @JsonKey()
  final double fatGoal;

  @override
  String toString() {
    return 'GoalsState.initial(caloriesGoal: $caloriesGoal, proteinGoal: $proteinGoal, carbsGoal: $carbsGoal, fatGoal: $fatGoal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.caloriesGoal, caloriesGoal) ||
                other.caloriesGoal == caloriesGoal) &&
            (identical(other.proteinGoal, proteinGoal) ||
                other.proteinGoal == proteinGoal) &&
            (identical(other.carbsGoal, carbsGoal) ||
                other.carbsGoal == carbsGoal) &&
            (identical(other.fatGoal, fatGoal) || other.fatGoal == fatGoal));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, caloriesGoal, proteinGoal, carbsGoal, fatGoal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double caloriesGoal, double proteinGoal,
            double carbsGoal, double fatGoal)
        initial,
  }) {
    return initial(caloriesGoal, proteinGoal, carbsGoal, fatGoal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoal)?
        initial,
  }) {
    return initial?.call(caloriesGoal, proteinGoal, carbsGoal, fatGoal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoal)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(caloriesGoal, proteinGoal, carbsGoal, fatGoal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GoalsState {
  const factory _Initial(
      {final double caloriesGoal,
      final double proteinGoal,
      final double carbsGoal,
      final double fatGoal}) = _$InitialImpl;

  @override
  double get caloriesGoal;
  @override
  double get proteinGoal;
  @override
  double get carbsGoal;
  @override
  double get fatGoal;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoalsEvent {
  Goals get goals => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Goals goals) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Goals goals)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Goals goals)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateGoalsEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateGoalsEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateGoalsEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoalsEventCopyWith<GoalsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsEventCopyWith<$Res> {
  factory $GoalsEventCopyWith(
          GoalsEvent value, $Res Function(GoalsEvent) then) =
      _$GoalsEventCopyWithImpl<$Res, GoalsEvent>;
  @useResult
  $Res call({Goals goals});

  $GoalsCopyWith<$Res> get goals;
}

/// @nodoc
class _$GoalsEventCopyWithImpl<$Res, $Val extends GoalsEvent>
    implements $GoalsEventCopyWith<$Res> {
  _$GoalsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
  }) {
    return _then(_value.copyWith(
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res> get goals {
    return $GoalsCopyWith<$Res>(_value.goals, (value) {
      return _then(_value.copyWith(goals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateGoalsEventImplCopyWith<$Res>
    implements $GoalsEventCopyWith<$Res> {
  factory _$$UpdateGoalsEventImplCopyWith(_$UpdateGoalsEventImpl value,
          $Res Function(_$UpdateGoalsEventImpl) then) =
      __$$UpdateGoalsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Goals goals});

  @override
  $GoalsCopyWith<$Res> get goals;
}

/// @nodoc
class __$$UpdateGoalsEventImplCopyWithImpl<$Res>
    extends _$GoalsEventCopyWithImpl<$Res, _$UpdateGoalsEventImpl>
    implements _$$UpdateGoalsEventImplCopyWith<$Res> {
  __$$UpdateGoalsEventImplCopyWithImpl(_$UpdateGoalsEventImpl _value,
      $Res Function(_$UpdateGoalsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
  }) {
    return _then(_$UpdateGoalsEventImpl(
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
    ));
  }
}

/// @nodoc

class _$UpdateGoalsEventImpl extends UpdateGoalsEvent {
  const _$UpdateGoalsEventImpl({required this.goals}) : super._();

  @override
  final Goals goals;

  @override
  String toString() {
    return 'GoalsEvent.update(goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGoalsEventImpl &&
            (identical(other.goals, goals) || other.goals == goals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGoalsEventImplCopyWith<_$UpdateGoalsEventImpl> get copyWith =>
      __$$UpdateGoalsEventImplCopyWithImpl<_$UpdateGoalsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Goals goals) update,
  }) {
    return update(goals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Goals goals)? update,
  }) {
    return update?.call(goals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Goals goals)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(goals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateGoalsEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateGoalsEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateGoalsEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateGoalsEvent extends GoalsEvent {
  const factory UpdateGoalsEvent({required final Goals goals}) =
      _$UpdateGoalsEventImpl;
  const UpdateGoalsEvent._() : super._();

  @override
  Goals get goals;
  @override
  @JsonKey(ignore: true)
  _$$UpdateGoalsEventImplCopyWith<_$UpdateGoalsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
