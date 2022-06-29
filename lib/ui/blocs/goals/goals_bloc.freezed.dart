// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'goals_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoalsState {
  double get caloriesGoal => throw _privateConstructorUsedError;
  double get proteinGoal => throw _privateConstructorUsedError;
  double get carbsGoal => throw _privateConstructorUsedError;
  double get fatGoals => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double caloriesGoal, double proteinGoal,
            double carbsGoal, double fatGoals)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoals)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoals)?
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
    TResult Function(_Initial value)? initial,
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
      _$GoalsStateCopyWithImpl<$Res>;
  $Res call(
      {double caloriesGoal,
      double proteinGoal,
      double carbsGoal,
      double fatGoals});
}

/// @nodoc
class _$GoalsStateCopyWithImpl<$Res> implements $GoalsStateCopyWith<$Res> {
  _$GoalsStateCopyWithImpl(this._value, this._then);

  final GoalsState _value;
  // ignore: unused_field
  final $Res Function(GoalsState) _then;

  @override
  $Res call({
    Object? caloriesGoal = freezed,
    Object? proteinGoal = freezed,
    Object? carbsGoal = freezed,
    Object? fatGoals = freezed,
  }) {
    return _then(_value.copyWith(
      caloriesGoal: caloriesGoal == freezed
          ? _value.caloriesGoal
          : caloriesGoal // ignore: cast_nullable_to_non_nullable
              as double,
      proteinGoal: proteinGoal == freezed
          ? _value.proteinGoal
          : proteinGoal // ignore: cast_nullable_to_non_nullable
              as double,
      carbsGoal: carbsGoal == freezed
          ? _value.carbsGoal
          : carbsGoal // ignore: cast_nullable_to_non_nullable
              as double,
      fatGoals: fatGoals == freezed
          ? _value.fatGoals
          : fatGoals // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $GoalsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {double caloriesGoal,
      double proteinGoal,
      double carbsGoal,
      double fatGoals});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$GoalsStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? caloriesGoal = freezed,
    Object? proteinGoal = freezed,
    Object? carbsGoal = freezed,
    Object? fatGoals = freezed,
  }) {
    return _then(_$_Initial(
      caloriesGoal: caloriesGoal == freezed
          ? _value.caloriesGoal
          : caloriesGoal // ignore: cast_nullable_to_non_nullable
              as double,
      proteinGoal: proteinGoal == freezed
          ? _value.proteinGoal
          : proteinGoal // ignore: cast_nullable_to_non_nullable
              as double,
      carbsGoal: carbsGoal == freezed
          ? _value.carbsGoal
          : carbsGoal // ignore: cast_nullable_to_non_nullable
              as double,
      fatGoals: fatGoals == freezed
          ? _value.fatGoals
          : fatGoals // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.caloriesGoal = 0,
      this.proteinGoal = 0,
      this.carbsGoal = 0,
      this.fatGoals = 0});

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
  final double fatGoals;

  @override
  String toString() {
    return 'GoalsState.initial(caloriesGoal: $caloriesGoal, proteinGoal: $proteinGoal, carbsGoal: $carbsGoal, fatGoals: $fatGoals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.caloriesGoal, caloriesGoal) &&
            const DeepCollectionEquality()
                .equals(other.proteinGoal, proteinGoal) &&
            const DeepCollectionEquality().equals(other.carbsGoal, carbsGoal) &&
            const DeepCollectionEquality().equals(other.fatGoals, fatGoals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(caloriesGoal),
      const DeepCollectionEquality().hash(proteinGoal),
      const DeepCollectionEquality().hash(carbsGoal),
      const DeepCollectionEquality().hash(fatGoals));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double caloriesGoal, double proteinGoal,
            double carbsGoal, double fatGoals)
        initial,
  }) {
    return initial(caloriesGoal, proteinGoal, carbsGoal, fatGoals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoals)?
        initial,
  }) {
    return initial?.call(caloriesGoal, proteinGoal, carbsGoal, fatGoals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoals)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(caloriesGoal, proteinGoal, carbsGoal, fatGoals);
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
    TResult Function(_Initial value)? initial,
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
      final double fatGoals}) = _$_Initial;

  @override
  double get caloriesGoal => throw _privateConstructorUsedError;
  @override
  double get proteinGoal => throw _privateConstructorUsedError;
  @override
  double get carbsGoal => throw _privateConstructorUsedError;
  @override
  double get fatGoals => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoalsEvent {
  double get caloriesGoal => throw _privateConstructorUsedError;
  double get proteinGoal => throw _privateConstructorUsedError;
  double get carbsGoal => throw _privateConstructorUsedError;
  double get fatGoals => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double caloriesGoal, double proteinGoal,
            double carbsGoal, double fatGoals)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoals)?
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoals)?
        update,
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
    TResult Function(UpdateGoalsEvent value)? update,
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
      _$GoalsEventCopyWithImpl<$Res>;
  $Res call(
      {double caloriesGoal,
      double proteinGoal,
      double carbsGoal,
      double fatGoals});
}

/// @nodoc
class _$GoalsEventCopyWithImpl<$Res> implements $GoalsEventCopyWith<$Res> {
  _$GoalsEventCopyWithImpl(this._value, this._then);

  final GoalsEvent _value;
  // ignore: unused_field
  final $Res Function(GoalsEvent) _then;

  @override
  $Res call({
    Object? caloriesGoal = freezed,
    Object? proteinGoal = freezed,
    Object? carbsGoal = freezed,
    Object? fatGoals = freezed,
  }) {
    return _then(_value.copyWith(
      caloriesGoal: caloriesGoal == freezed
          ? _value.caloriesGoal
          : caloriesGoal // ignore: cast_nullable_to_non_nullable
              as double,
      proteinGoal: proteinGoal == freezed
          ? _value.proteinGoal
          : proteinGoal // ignore: cast_nullable_to_non_nullable
              as double,
      carbsGoal: carbsGoal == freezed
          ? _value.carbsGoal
          : carbsGoal // ignore: cast_nullable_to_non_nullable
              as double,
      fatGoals: fatGoals == freezed
          ? _value.fatGoals
          : fatGoals // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$UpdateGoalsEventCopyWith<$Res>
    implements $GoalsEventCopyWith<$Res> {
  factory _$$UpdateGoalsEventCopyWith(
          _$UpdateGoalsEvent value, $Res Function(_$UpdateGoalsEvent) then) =
      __$$UpdateGoalsEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {double caloriesGoal,
      double proteinGoal,
      double carbsGoal,
      double fatGoals});
}

/// @nodoc
class __$$UpdateGoalsEventCopyWithImpl<$Res>
    extends _$GoalsEventCopyWithImpl<$Res>
    implements _$$UpdateGoalsEventCopyWith<$Res> {
  __$$UpdateGoalsEventCopyWithImpl(
      _$UpdateGoalsEvent _value, $Res Function(_$UpdateGoalsEvent) _then)
      : super(_value, (v) => _then(v as _$UpdateGoalsEvent));

  @override
  _$UpdateGoalsEvent get _value => super._value as _$UpdateGoalsEvent;

  @override
  $Res call({
    Object? caloriesGoal = freezed,
    Object? proteinGoal = freezed,
    Object? carbsGoal = freezed,
    Object? fatGoals = freezed,
  }) {
    return _then(_$UpdateGoalsEvent(
      caloriesGoal: caloriesGoal == freezed
          ? _value.caloriesGoal
          : caloriesGoal // ignore: cast_nullable_to_non_nullable
              as double,
      proteinGoal: proteinGoal == freezed
          ? _value.proteinGoal
          : proteinGoal // ignore: cast_nullable_to_non_nullable
              as double,
      carbsGoal: carbsGoal == freezed
          ? _value.carbsGoal
          : carbsGoal // ignore: cast_nullable_to_non_nullable
              as double,
      fatGoals: fatGoals == freezed
          ? _value.fatGoals
          : fatGoals // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdateGoalsEvent extends UpdateGoalsEvent {
  const _$UpdateGoalsEvent(
      {required this.caloriesGoal,
      required this.proteinGoal,
      required this.carbsGoal,
      required this.fatGoals})
      : super._();

  @override
  final double caloriesGoal;
  @override
  final double proteinGoal;
  @override
  final double carbsGoal;
  @override
  final double fatGoals;

  @override
  String toString() {
    return 'GoalsEvent.update(caloriesGoal: $caloriesGoal, proteinGoal: $proteinGoal, carbsGoal: $carbsGoal, fatGoals: $fatGoals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGoalsEvent &&
            const DeepCollectionEquality()
                .equals(other.caloriesGoal, caloriesGoal) &&
            const DeepCollectionEquality()
                .equals(other.proteinGoal, proteinGoal) &&
            const DeepCollectionEquality().equals(other.carbsGoal, carbsGoal) &&
            const DeepCollectionEquality().equals(other.fatGoals, fatGoals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(caloriesGoal),
      const DeepCollectionEquality().hash(proteinGoal),
      const DeepCollectionEquality().hash(carbsGoal),
      const DeepCollectionEquality().hash(fatGoals));

  @JsonKey(ignore: true)
  @override
  _$$UpdateGoalsEventCopyWith<_$UpdateGoalsEvent> get copyWith =>
      __$$UpdateGoalsEventCopyWithImpl<_$UpdateGoalsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double caloriesGoal, double proteinGoal,
            double carbsGoal, double fatGoals)
        update,
  }) {
    return update(caloriesGoal, proteinGoal, carbsGoal, fatGoals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoals)?
        update,
  }) {
    return update?.call(caloriesGoal, proteinGoal, carbsGoal, fatGoals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double caloriesGoal, double proteinGoal, double carbsGoal,
            double fatGoals)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(caloriesGoal, proteinGoal, carbsGoal, fatGoals);
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
    TResult Function(UpdateGoalsEvent value)? update,
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
  const factory UpdateGoalsEvent(
      {required final double caloriesGoal,
      required final double proteinGoal,
      required final double carbsGoal,
      required final double fatGoals}) = _$UpdateGoalsEvent;
  const UpdateGoalsEvent._() : super._();

  @override
  double get caloriesGoal => throw _privateConstructorUsedError;
  @override
  double get proteinGoal => throw _privateConstructorUsedError;
  @override
  double get carbsGoal => throw _privateConstructorUsedError;
  @override
  double get fatGoals => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UpdateGoalsEventCopyWith<_$UpdateGoalsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
