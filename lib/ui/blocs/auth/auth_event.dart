part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logInAnonymously() = LogInAnonymouslyEven;
  const factory AuthEvent.logInWithGoogle() = LogInWithGoogleEvent;
  const factory AuthEvent.updateUser(User? user) = UpdateUserEvent;
  const factory AuthEvent.logOut() = LogOutEvent;
}
