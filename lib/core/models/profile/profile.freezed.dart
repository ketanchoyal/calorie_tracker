// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Profile {
  Goals? get goals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call({Goals? goals});

  $GoalsCopyWith<$Res>? get goals;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = freezed,
  }) {
    return _then(_value.copyWith(
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res>? get goals {
    if (_value.goals == null) {
      return null;
    }

    return $GoalsCopyWith<$Res>(_value.goals!, (value) {
      return _then(_value.copyWith(goals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Goals? goals});

  @override
  $GoalsCopyWith<$Res>? get goals;
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = freezed,
  }) {
    return _then(_$ProfileImpl(
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals?,
    ));
  }
}

/// @nodoc

class _$ProfileImpl extends _Profile {
  _$ProfileImpl({this.goals}) : super._();

  @override
  final Goals? goals;

  @override
  String toString() {
    return 'Profile(goals: $goals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.goals, goals) || other.goals == goals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);
}

abstract class _Profile extends Profile {
  factory _Profile({final Goals? goals}) = _$ProfileImpl;
  _Profile._() : super._();

  @override
  Goals? get goals;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Goals {
  double get calories => throw _privateConstructorUsedError;
  double get protein => throw _privateConstructorUsedError;
  double get fat => throw _privateConstructorUsedError;
  double get carbs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoalsCopyWith<Goals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsCopyWith<$Res> {
  factory $GoalsCopyWith(Goals value, $Res Function(Goals) then) =
      _$GoalsCopyWithImpl<$Res, Goals>;
  @useResult
  $Res call({double calories, double protein, double fat, double carbs});
}

/// @nodoc
class _$GoalsCopyWithImpl<$Res, $Val extends Goals>
    implements $GoalsCopyWith<$Res> {
  _$GoalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? fat = null,
    Object? carbs = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalsImplCopyWith<$Res> implements $GoalsCopyWith<$Res> {
  factory _$$GoalsImplCopyWith(
          _$GoalsImpl value, $Res Function(_$GoalsImpl) then) =
      __$$GoalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double calories, double protein, double fat, double carbs});
}

/// @nodoc
class __$$GoalsImplCopyWithImpl<$Res>
    extends _$GoalsCopyWithImpl<$Res, _$GoalsImpl>
    implements _$$GoalsImplCopyWith<$Res> {
  __$$GoalsImplCopyWithImpl(
      _$GoalsImpl _value, $Res Function(_$GoalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? fat = null,
    Object? carbs = null,
  }) {
    return _then(_$GoalsImpl(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GoalsImpl extends _Goals {
  _$GoalsImpl(
      {required this.calories,
      required this.protein,
      required this.fat,
      required this.carbs})
      : super._();

  @override
  final double calories;
  @override
  final double protein;
  @override
  final double fat;
  @override
  final double carbs;

  @override
  String toString() {
    return 'Goals(calories: $calories, protein: $protein, fat: $fat, carbs: $carbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalsImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.carbs, carbs) || other.carbs == carbs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calories, protein, fat, carbs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalsImplCopyWith<_$GoalsImpl> get copyWith =>
      __$$GoalsImplCopyWithImpl<_$GoalsImpl>(this, _$identity);
}

abstract class _Goals extends Goals {
  factory _Goals(
      {required final double calories,
      required final double protein,
      required final double fat,
      required final double carbs}) = _$GoalsImpl;
  _Goals._() : super._();

  @override
  double get calories;
  @override
  double get protein;
  @override
  double get fat;
  @override
  double get carbs;
  @override
  @JsonKey(ignore: true)
  _$$GoalsImplCopyWith<_$GoalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
