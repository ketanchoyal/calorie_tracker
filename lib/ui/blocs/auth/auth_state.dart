part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.logedOut() = LogedOutAuthState;
  const factory AuthState.logedIn() = LogedInAuthState;
  const factory AuthState.loading() = LoadingAuthState;
}
