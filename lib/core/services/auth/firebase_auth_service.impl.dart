import 'package:calorie_tracker/core/services/auth/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServiceImpl implements FirebaseAuthService {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Future<void> loginAnonmously() async {
    await _firebaseAuth.signInAnonymously();
  }

  @override
  User? get user => _firebaseAuth.currentUser;
}
