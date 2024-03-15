// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function()? logedOut,
    TResult? Function()? logedIn,
    TResult? Function()? loading,
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
    TResult? Function(LogedOutAuthState value)? logedOut,
    TResult? Function(LogedInAuthState value)? logedIn,
    TResult? Function(LoadingAuthState value)? loading,
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
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogedOutAuthStateImplCopyWith<$Res> {
  factory _$$LogedOutAuthStateImplCopyWith(_$LogedOutAuthStateImpl value,
          $Res Function(_$LogedOutAuthStateImpl) then) =
      __$$LogedOutAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogedOutAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogedOutAuthStateImpl>
    implements _$$LogedOutAuthStateImplCopyWith<$Res> {
  __$$LogedOutAuthStateImplCopyWithImpl(_$LogedOutAuthStateImpl _value,
      $Res Function(_$LogedOutAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogedOutAuthStateImpl implements LogedOutAuthState {
  const _$LogedOutAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.logedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogedOutAuthStateImpl);
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
    TResult? Function()? logedOut,
    TResult? Function()? logedIn,
    TResult? Function()? loading,
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
    TResult? Function(LogedOutAuthState value)? logedOut,
    TResult? Function(LogedInAuthState value)? logedIn,
    TResult? Function(LoadingAuthState value)? loading,
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
  const factory LogedOutAuthState() = _$LogedOutAuthStateImpl;
}

/// @nodoc
abstract class _$$LogedInAuthStateImplCopyWith<$Res> {
  factory _$$LogedInAuthStateImplCopyWith(_$LogedInAuthStateImpl value,
          $Res Function(_$LogedInAuthStateImpl) then) =
      __$$LogedInAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogedInAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogedInAuthStateImpl>
    implements _$$LogedInAuthStateImplCopyWith<$Res> {
  __$$LogedInAuthStateImplCopyWithImpl(_$LogedInAuthStateImpl _value,
      $Res Function(_$LogedInAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogedInAuthStateImpl implements LogedInAuthState {
  const _$LogedInAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.logedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogedInAuthStateImpl);
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
    TResult? Function()? logedOut,
    TResult? Function()? logedIn,
    TResult? Function()? loading,
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
    TResult? Function(LogedOutAuthState value)? logedOut,
    TResult? Function(LogedInAuthState value)? logedIn,
    TResult? Function(LoadingAuthState value)? loading,
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
  const factory LogedInAuthState() = _$LogedInAuthStateImpl;
}

/// @nodoc
abstract class _$$LoadingAuthStateImplCopyWith<$Res> {
  factory _$$LoadingAuthStateImplCopyWith(_$LoadingAuthStateImpl value,
          $Res Function(_$LoadingAuthStateImpl) then) =
      __$$LoadingAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingAuthStateImpl>
    implements _$$LoadingAuthStateImplCopyWith<$Res> {
  __$$LoadingAuthStateImplCopyWithImpl(_$LoadingAuthStateImpl _value,
      $Res Function(_$LoadingAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAuthStateImpl implements LoadingAuthState {
  const _$LoadingAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingAuthStateImpl);
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
    TResult? Function()? logedOut,
    TResult? Function()? logedIn,
    TResult? Function()? loading,
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
    TResult? Function(LogedOutAuthState value)? logedOut,
    TResult? Function(LogedInAuthState value)? logedIn,
    TResult? Function(LoadingAuthState value)? loading,
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
  const factory LoadingAuthState() = _$LoadingAuthStateImpl;
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
    TResult? Function()? logInAnonymously,
    TResult? Function()? logInWithGoogle,
    TResult? Function(User? user)? updateUser,
    TResult? Function()? logOut,
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
    TResult? Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult? Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(LogOutEvent value)? logOut,
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
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogInAnonymouslyEvenImplCopyWith<$Res> {
  factory _$$LogInAnonymouslyEvenImplCopyWith(_$LogInAnonymouslyEvenImpl value,
          $Res Function(_$LogInAnonymouslyEvenImpl) then) =
      __$$LogInAnonymouslyEvenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogInAnonymouslyEvenImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogInAnonymouslyEvenImpl>
    implements _$$LogInAnonymouslyEvenImplCopyWith<$Res> {
  __$$LogInAnonymouslyEvenImplCopyWithImpl(_$LogInAnonymouslyEvenImpl _value,
      $Res Function(_$LogInAnonymouslyEvenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogInAnonymouslyEvenImpl implements LogInAnonymouslyEven {
  const _$LogInAnonymouslyEvenImpl();

  @override
  String toString() {
    return 'AuthEvent.logInAnonymously()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInAnonymouslyEvenImpl);
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
    TResult? Function()? logInAnonymously,
    TResult? Function()? logInWithGoogle,
    TResult? Function(User? user)? updateUser,
    TResult? Function()? logOut,
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
    TResult? Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult? Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(LogOutEvent value)? logOut,
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
  const factory LogInAnonymouslyEven() = _$LogInAnonymouslyEvenImpl;
}

/// @nodoc
abstract class _$$LogInWithGoogleEventImplCopyWith<$Res> {
  factory _$$LogInWithGoogleEventImplCopyWith(_$LogInWithGoogleEventImpl value,
          $Res Function(_$LogInWithGoogleEventImpl) then) =
      __$$LogInWithGoogleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogInWithGoogleEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogInWithGoogleEventImpl>
    implements _$$LogInWithGoogleEventImplCopyWith<$Res> {
  __$$LogInWithGoogleEventImplCopyWithImpl(_$LogInWithGoogleEventImpl _value,
      $Res Function(_$LogInWithGoogleEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogInWithGoogleEventImpl implements LogInWithGoogleEvent {
  const _$LogInWithGoogleEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInWithGoogleEventImpl);
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
    TResult? Function()? logInAnonymously,
    TResult? Function()? logInWithGoogle,
    TResult? Function(User? user)? updateUser,
    TResult? Function()? logOut,
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
    TResult? Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult? Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(LogOutEvent value)? logOut,
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
  const factory LogInWithGoogleEvent() = _$LogInWithGoogleEventImpl;
}

/// @nodoc
abstract class _$$UpdateUserEventImplCopyWith<$Res> {
  factory _$$UpdateUserEventImplCopyWith(_$UpdateUserEventImpl value,
          $Res Function(_$UpdateUserEventImpl) then) =
      __$$UpdateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$UpdateUserEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserEventImpl>
    implements _$$UpdateUserEventImplCopyWith<$Res> {
  __$$UpdateUserEventImplCopyWithImpl(
      _$UpdateUserEventImpl _value, $Res Function(_$UpdateUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UpdateUserEventImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$UpdateUserEventImpl implements UpdateUserEvent {
  const _$UpdateUserEventImpl(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthEvent.updateUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserEventImplCopyWith<_$UpdateUserEventImpl> get copyWith =>
      __$$UpdateUserEventImplCopyWithImpl<_$UpdateUserEventImpl>(
          this, _$identity);

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
    TResult? Function()? logInAnonymously,
    TResult? Function()? logInWithGoogle,
    TResult? Function(User? user)? updateUser,
    TResult? Function()? logOut,
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
    TResult? Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult? Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(LogOutEvent value)? logOut,
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
  const factory UpdateUserEvent(final User? user) = _$UpdateUserEventImpl;

  User? get user;
  @JsonKey(ignore: true)
  _$$UpdateUserEventImplCopyWith<_$UpdateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutEventImplCopyWith<$Res> {
  factory _$$LogOutEventImplCopyWith(
          _$LogOutEventImpl value, $Res Function(_$LogOutEventImpl) then) =
      __$$LogOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutEventImpl>
    implements _$$LogOutEventImplCopyWith<$Res> {
  __$$LogOutEventImplCopyWithImpl(
      _$LogOutEventImpl _value, $Res Function(_$LogOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutEventImpl implements LogOutEvent {
  const _$LogOutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutEventImpl);
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
    TResult? Function()? logInAnonymously,
    TResult? Function()? logInWithGoogle,
    TResult? Function(User? user)? updateUser,
    TResult? Function()? logOut,
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
    TResult? Function(LogInAnonymouslyEven value)? logInAnonymously,
    TResult? Function(LogInWithGoogleEvent value)? logInWithGoogle,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(LogOutEvent value)? logOut,
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
  const factory LogOutEvent() = _$LogOutEventImpl;
}
