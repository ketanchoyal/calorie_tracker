// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Profile {
  Goals? get goals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call({Goals? goals});

  $GoalsCopyWith<$Res>? get goals;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? goals = freezed,
  }) {
    return _then(_value.copyWith(
      goals: goals == freezed
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals?,
    ));
  }

  @override
  $GoalsCopyWith<$Res>? get goals {
    if (_value.goals == null) {
      return null;
    }

    return $GoalsCopyWith<$Res>(_value.goals!, (value) {
      return _then(_value.copyWith(goals: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  $Res call({Goals? goals});

  @override
  $GoalsCopyWith<$Res>? get goals;
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, (v) => _then(v as _$_Profile));

  @override
  _$_Profile get _value => super._value as _$_Profile;

  @override
  $Res call({
    Object? goals = freezed,
  }) {
    return _then(_$_Profile(
      goals: goals == freezed
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals?,
    ));
  }
}

/// @nodoc

class _$_Profile extends _Profile {
  _$_Profile({this.goals}) : super._();

  @override
  final Goals? goals;

  @override
  String toString() {
    return 'Profile(goals: $goals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            const DeepCollectionEquality().equals(other.goals, goals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(goals));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);
}

abstract class _Profile extends Profile {
  factory _Profile({final Goals? goals}) = _$_Profile;
  _Profile._() : super._();

  @override
  Goals? get goals => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
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
      _$GoalsCopyWithImpl<$Res>;
  $Res call({double calories, double protein, double fat, double carbs});
}

/// @nodoc
class _$GoalsCopyWithImpl<$Res> implements $GoalsCopyWith<$Res> {
  _$GoalsCopyWithImpl(this._value, this._then);

  final Goals _value;
  // ignore: unused_field
  final $Res Function(Goals) _then;

  @override
  $Res call({
    Object? calories = freezed,
    Object? protein = freezed,
    Object? fat = freezed,
    Object? carbs = freezed,
  }) {
    return _then(_value.copyWith(
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      carbs: carbs == freezed
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_GoalsCopyWith<$Res> implements $GoalsCopyWith<$Res> {
  factory _$$_GoalsCopyWith(_$_Goals value, $Res Function(_$_Goals) then) =
      __$$_GoalsCopyWithImpl<$Res>;
  @override
  $Res call({double calories, double protein, double fat, double carbs});
}

/// @nodoc
class __$$_GoalsCopyWithImpl<$Res> extends _$GoalsCopyWithImpl<$Res>
    implements _$$_GoalsCopyWith<$Res> {
  __$$_GoalsCopyWithImpl(_$_Goals _value, $Res Function(_$_Goals) _then)
      : super(_value, (v) => _then(v as _$_Goals));

  @override
  _$_Goals get _value => super._value as _$_Goals;

  @override
  $Res call({
    Object? calories = freezed,
    Object? protein = freezed,
    Object? fat = freezed,
    Object? carbs = freezed,
  }) {
    return _then(_$_Goals(
      calories: calories == freezed
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      carbs: carbs == freezed
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Goals extends _Goals {
  _$_Goals(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Goals &&
            const DeepCollectionEquality().equals(other.calories, calories) &&
            const DeepCollectionEquality().equals(other.protein, protein) &&
            const DeepCollectionEquality().equals(other.fat, fat) &&
            const DeepCollectionEquality().equals(other.carbs, carbs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(calories),
      const DeepCollectionEquality().hash(protein),
      const DeepCollectionEquality().hash(fat),
      const DeepCollectionEquality().hash(carbs));

  @JsonKey(ignore: true)
  @override
  _$$_GoalsCopyWith<_$_Goals> get copyWith =>
      __$$_GoalsCopyWithImpl<_$_Goals>(this, _$identity);
}

abstract class _Goals extends Goals {
  factory _Goals(
      {required final double calories,
      required final double protein,
      required final double fat,
      required final double carbs}) = _$_Goals;
  _Goals._() : super._();

  @override
  double get calories => throw _privateConstructorUsedError;
  @override
  double get protein => throw _privateConstructorUsedError;
  @override
  double get fat => throw _privateConstructorUsedError;
  @override
  double get carbs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GoalsCopyWith<_$_Goals> get copyWith =>
      throw _privateConstructorUsedError;
}
