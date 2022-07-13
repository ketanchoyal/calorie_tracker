import 'package:calorie_tracker/core/services/auth/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthServiceImpl implements FirebaseAuthService {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Future<void> loginAnonmously() async {
    await _firebaseAuth.signInAnonymously();
  }

  @override
  User? get user => _firebaseAuth.currentUser;

  @override
  Stream<User?> get userStream => _firebaseAuth.userChanges();

  @override
  Future<void> googleSignIn() async {
    final googleSignIn = GoogleSignIn();
    final googleAccount = await googleSignIn.signIn();
    if (googleAccount == null) {
      return;
    }
    final googleAuth = await googleAccount.authentication;

    final authCredential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await _firebaseAuth.signInWithCredential(authCredential);
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }
}
