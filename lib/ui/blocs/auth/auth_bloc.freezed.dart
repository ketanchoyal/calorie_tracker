// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function() logedIn,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function()? logedIn,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function()? logedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogedOutAuthState value) logedOut,
    required TResult Function(LogedInAuthState value) logedIn,
    required TResult Function(LoadingAuthState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogedOutAuthState value)? logedOut,
    TResult Function(LogedInAuthState value)? logedIn,
    TResult Function(LoadingAuthState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogedOutAuthState value)? logedOut,
    TResult Function(LogedInAuthState value)? logedIn,
    TResult Function(LoadingAuthState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$LogedOutAuthStateCopyWith<$Res> {
  factory _$$LogedOutAuthStateCopyWith(
          _$LogedOutAuthState value, $Res Function(_$LogedOutAuthState) then) =
      __$$LogedOutAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogedOutAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$LogedOutAuthStateCopyWith<$Res> {
  __$$LogedOutAuthStateCopyWithImpl(
      _$LogedOutAuthState _value, $Res Function(_$LogedOutAuthState) _then)
      : super(_value, (v) => _then(v as _$LogedOutAuthState));

  @override
  _$LogedOutAuthState get _value => super._value as _$LogedOutAuthState;
}

/// @nodoc

class _$LogedOutAuthState implements LogedOutAuthState {
  const _$LogedOutAuthState();

  @override
  String toString() {
    return 'AuthState.logedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogedOutAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function() logedIn,
    required TResult Function() loading,
  }) {
    return logedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function()? logedIn,
    TResult Function()? loading,
  }) {
    return logedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function()? logedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (logedOut != null) {
      return logedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogedOutAuthState value) logedOut,
    required TResult Function(LogedInAuthState value) logedIn,
    required TResult Function(LoadingAuthState value) loading,
  }) {
    return logedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogedOutAuthState value)? logedOut,
    TResult Function(LogedInAuthState value)? logedIn,
    TResult Function(LoadingAuthState value)? loading,
  }) {
    return logedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogedOutAuthState value)? logedOut,
    TResult Function(LogedInAuthState value)? logedIn,
    TResult Function(LoadingAuthState value)? loading,
    required TResult orElse(),
  }) {
    if (logedOut != null) {
      return logedOut(this);
    }
    return orElse();
  }
}

abstract class LogedOutAuthState implements AuthState {
  const factory LogedOutAuthState() = _$LogedOutAuthState;
}

/// @nodoc
abstract class _$$LogedInAuthStateCopyWith<$Res> {
  factory _$$LogedInAuthStateCopyWith(
          _$LogedInAuthState value, $Res Function(_$LogedInAuthState) then) =
      __$$LogedInAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogedInAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$LogedInAuthStateCopyWith<$Res> {
  __$$LogedInAuthStateCopyWithImpl(
      _$LogedInAuthState _value, $Res Function(_$LogedInAuthState) _then)
      : super(_value, (v) => _then(v as _$LogedInAuthState));

  @override
  _$LogedInAuthState get _value => super._value as _$LogedInAuthState;
}

/// @nodoc

class _$LogedInAuthState implements LogedInAuthState {
  const _$LogedInAuthState();

  @override
  String toString() {
    return 'AuthState.logedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogedInAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function() logedIn,
    required TResult Function() loading,
  }) {
    return logedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function()? logedIn,
    TResult Function()? loading,
  }) {
    return logedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function()? logedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogedOutAuthState value) logedOut,
    required TResult Function(LogedInAuthState value) logedIn,
    required TResult Function(LoadingAuthState value) loading,
  }) {
    return logedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogedOutAuthState value)? logedOut,
    TResult Function(LogedInAuthState value)? logedIn,
    TResult Function(LoadingAuthState value)? loading,
  }) {
    return logedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogedOutAuthState value)? logedOut,
    TResult Function(LogedInAuthState value)? logedIn,
    TResult Function(LoadingAuthState value)? loading,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(this);
    }
    return orElse();
  }
}

abstract class LogedInAuthState implements AuthState {
  const factory LogedInAuthState() = _$LogedInAuthState;
}

/// @nodoc
abstract class _$$LoadingAuthStateCopyWith<$Res> {
  factory _$$LoadingAuthStateCopyWith(
          _$LoadingAuthState value, $Res Function(_$LoadingAuthState) then) =
      __$$LoadingAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$LoadingAuthStateCopyWith<$Res> {
  __$$LoadingAuthStateCopyWithImpl(
      _$LoadingAuthState _value, $Res Function(_$LoadingAuthState) _then)
      : super(_value, (v) => _then(v as _$LoadingAuthState));

  @override
  _$LoadingAuthState get _value => super._value as _$LoadingAuthState;
}

/// @nodoc

class _$LoadingAuthState implements LoadingAuthState {
  const _$LoadingAuthState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function() logedIn,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function()? logedIn,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function()? logedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogedOutAuthState value) logedOut,
    required TResult Function(LogedInAuthState value) logedIn,
    required TResult Function(LoadingAuthState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogedOutAuthState value)? logedOut,
    TResult Function(LogedInAuthState value)? logedIn,
    TResult Function(LoadingAuthState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogedOutAuthState value)? logedOut,
    TResult Function(LogedInAuthState value)? logedIn,
    TResult Function(LoadingAuthState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAuthState implements AuthState {
  const factory LoadingAuthState() = _$LoadingAuthState;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logInAnonymously,
    required TResult Function() logInWithGoogle,
    required TResult Function(User? user) updateUser,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logInAnonymously,
    TResult Function()? logInWithGoogle,
    TResult Function(User? user)? updateUser,
    TResult Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logInAnonymously,
    TResult Function()? logInWithGoogle,
    TResult Function(User? user)? updateUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAnonymouslyEven value) logInAnonymously,
    required TResult Function(LogInWithGoogleEvent value) logInWithGoogle,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(LogOutEvent value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(LogOutEvent value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(LogOutEvent value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$LogInAnonymouslyEvenCopyWith<$Res> {
  factory _$$LogInAnonymouslyEvenCopyWith(_$LogInAnonymouslyEven value,
          $Res Function(_$LogInAnonymouslyEven) then) =
      __$$LogInAnonymouslyEvenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogInAnonymouslyEvenCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$LogInAnonymouslyEvenCopyWith<$Res> {
  __$$LogInAnonymouslyEvenCopyWithImpl(_$LogInAnonymouslyEven _value,
      $Res Function(_$LogInAnonymouslyEven) _then)
      : super(_value, (v) => _then(v as _$LogInAnonymouslyEven));

  @override
  _$LogInAnonymouslyEven get _value => super._value as _$LogInAnonymouslyEven;
}

/// @nodoc

class _$LogInAnonymouslyEven implements LogInAnonymouslyEven {
  const _$LogInAnonymouslyEven();

  @override
  String toString() {
    return 'AuthEvent.logInAnonymously()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogInAnonymouslyEven);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logInAnonymously,
    required TResult Function() logInWithGoogle,
    required TResult Function(User? user) updateUser,
    required TResult Function() logOut,
  }) {
    return logInAnonymously();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logInAnonymously,
    TResult Function()? logInWithGoogle,
    TResult Function(User? user)? updateUser,
    TResult Function()? logOut,
  }) {
    return logInAnonymously?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logInAnonymously,
    TResult Function()? logInWithGoogle,
    TResult Function(User? user)? updateUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logInAnonymously != null) {
      return logInAnonymously();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAnonymouslyEven value) logInAnonymously,
    required TResult Function(LogInWithGoogleEvent value) logInWithGoogle,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(LogOutEvent value) logOut,
  }) {
    return logInAnonymously(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(LogOutEvent value)? logOut,
  }) {
    return logInAnonymously?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logInAnonymously != null) {
      return logInAnonymously(this);
    }
    return orElse();
  }
}

abstract class LogInAnonymouslyEven implements AuthEvent {
  const factory LogInAnonymouslyEven() = _$LogInAnonymouslyEven;
}

/// @nodoc
abstract class _$$LogInWithGoogleEventCopyWith<$Res> {
  factory _$$LogInWithGoogleEventCopyWith(_$LogInWithGoogleEvent value,
          $Res Function(_$LogInWithGoogleEvent) then) =
      __$$LogInWithGoogleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogInWithGoogleEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$LogInWithGoogleEventCopyWith<$Res> {
  __$$LogInWithGoogleEventCopyWithImpl(_$LogInWithGoogleEvent _value,
      $Res Function(_$LogInWithGoogleEvent) _then)
      : super(_value, (v) => _then(v as _$LogInWithGoogleEvent));

  @override
  _$LogInWithGoogleEvent get _value => super._value as _$LogInWithGoogleEvent;
}

/// @nodoc

class _$LogInWithGoogleEvent implements LogInWithGoogleEvent {
  const _$LogInWithGoogleEvent();

  @override
  String toString() {
    return 'AuthEvent.logInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogInWithGoogleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logInAnonymously,
    required TResult Function() logInWithGoogle,
    required TResult Function(User? user) updateUser,
    required TResult Function() logOut,
  }) {
    return logInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logInAnonymously,
    TResult Function()? logInWithGoogle,
    TResult Function(User? user)? updateUser,
    TResult Function()? logOut,
  }) {
    return logInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logInAnonymously,
    TResult Function()? logInWithGoogle,
    TResult Function(User? user)? updateUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logInWithGoogle != null) {
      return logInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAnonymouslyEven value) logInAnonymously,
    required TResult Function(LogInWithGoogleEvent value) logInWithGoogle,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(LogOutEvent value) logOut,
  }) {
    return logInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(LogOutEvent value)? logOut,
  }) {
    return logInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logInWithGoogle != null) {
      return logInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class LogInWithGoogleEvent implements AuthEvent {
  const factory LogInWithGoogleEvent() = _$LogInWithGoogleEvent;
}

/// @nodoc
abstract class _$$UpdateUserEventCopyWith<$Res> {
  factory _$$UpdateUserEventCopyWith(
          _$UpdateUserEvent value, $Res Function(_$UpdateUserEvent) then) =
      __$$UpdateUserEventCopyWithImpl<$Res>;
  $Res call({User? user});
}

/// @nodoc
class __$$UpdateUserEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$UpdateUserEventCopyWith<$Res> {
  __$$UpdateUserEventCopyWithImpl(
      _$UpdateUserEvent _value, $Res Function(_$UpdateUserEvent) _then)
      : super(_value, (v) => _then(v as _$UpdateUserEvent));

  @override
  _$UpdateUserEvent get _value => super._value as _$UpdateUserEvent;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UpdateUserEvent(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$UpdateUserEvent implements UpdateUserEvent {
  const _$UpdateUserEvent(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthEvent.updateUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserEvent &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$UpdateUserEventCopyWith<_$UpdateUserEvent> get copyWith =>
      __$$UpdateUserEventCopyWithImpl<_$UpdateUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logInAnonymously,
    required TResult Function() logInWithGoogle,
    required TResult Function(User? user) updateUser,
    required TResult Function() logOut,
  }) {
    return updateUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logInAnonymously,
    TResult Function()? logInWithGoogle,
    TResult Function(User? user)? updateUser,
    TResult Function()? logOut,
  }) {
    return updateUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logInAnonymously,
    TResult Function()? logInWithGoogle,
    TResult Function(User? user)? updateUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAnonymouslyEven value) logInAnonymously,
    required TResult Function(LogInWithGoogleEvent value) logInWithGoogle,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(LogOutEvent value) logOut,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(LogOutEvent value)? logOut,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUserEvent implements AuthEvent {
  const factory UpdateUserEvent(final User? user) = _$UpdateUserEvent;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateUserEventCopyWith<_$UpdateUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutEventCopyWith<$Res> {
  factory _$$LogOutEventCopyWith(
          _$LogOutEvent value, $Res Function(_$LogOutEvent) then) =
      __$$LogOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$LogOutEventCopyWith<$Res> {
  __$$LogOutEventCopyWithImpl(
      _$LogOutEvent _value, $Res Function(_$LogOutEvent) _then)
      : super(_value, (v) => _then(v as _$LogOutEvent));

  @override
  _$LogOutEvent get _value => super._value as _$LogOutEvent;
}

/// @nodoc

class _$LogOutEvent implements LogOutEvent {
  const _$LogOutEvent();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logInAnonymously,
    required TResult Function() logInWithGoogle,
    required TResult Function(User? user) updateUser,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logInAnonymously,
    TResult Function()? logInWithGoogle,
    TResult Function(User? user)? updateUser,
    TResult Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logInAnonymously,
    TResult Function()? logInWithGoogle,
    TResult Function(User? user)? updateUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAnonymouslyEven value) logInAnonymously,
    required TResult Function(LogInWithGoogleEvent value) logInWithGoogle,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(LogOutEvent value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(LogOutEvent value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOutEvent implements AuthEvent {
  const factory LogOutEvent() = _$LogOutEvent;
}
