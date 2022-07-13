import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:calorie_tracker/core/services/auth/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._firebaseAuthService) : super(const AuthState.loading()) {
    on<LogInAnonymouslyEven>(_mapLogInAnonymouslyEvent);
    on<LogInWithGoogleEvent>(_mapLogInWithGoogleEvent);
    on<LogOutEvent>(_mapLogOutEvent);
    on<UpdateUserEvent>(_mapUpdateUserEvent);

    _firebaseAuthService.userStream.listen((user) {
      add(UpdateUserEvent(user));
    });
  }

  final FirebaseAuthService _firebaseAuthService;

  FutureOr<void> _mapLogInAnonymouslyEvent(
    LogInAnonymouslyEven event,
    Emitter<AuthState> emit,
  ) async {
    emit(const LoadingAuthState());
    await _firebaseAuthService.loginAnonmously();
    emit(const LogedInAuthState());
  }

  FutureOr<void> _mapLogInWithGoogleEvent(
    LogInWithGoogleEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const LoadingAuthState());
    final result = await _firebaseAuthService.googleSignIn();
    if (result) {
      emit(const LogedInAuthState());
    } else {
      emit(const LogedOutAuthState());
    }
  }

  FutureOr<void> _mapLogOutEvent(
    LogOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const LoadingAuthState());
    await _firebaseAuthService.logout();
    emit(const LogedOutAuthState());
  }

  FutureOr<void> _mapUpdateUserEvent(
    UpdateUserEvent event,
    Emitter<AuthState> emit,
  ) async {
    if (event.user != null) {
      emit(const LogedInAuthState());
    } else {
      emit(const LogedOutAuthState());
    }
  }
}
