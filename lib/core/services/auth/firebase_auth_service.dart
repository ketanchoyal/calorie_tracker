import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthService {
  Future<void> loginAnonmously();

  Future<bool> googleSignIn();

  User? get user;

  Stream<User?> get userStream;

  Future<void> logout();
}
