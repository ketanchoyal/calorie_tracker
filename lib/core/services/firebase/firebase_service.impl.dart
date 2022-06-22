import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/core/models/food_log/food_log.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServiceImpl implements FirebaseService {
  final _firebaseFirestore = FirebaseFirestore.instance;
  final _firebaseAuth = FirebaseAuth.instance;

  DocumentReference get _currentUserRef => _firebaseFirestore
      .collection('users')
      .doc(_firebaseAuth.currentUser!.uid);

  CollectionReference get _foodCollectionRef =>
      _currentUserRef.collection('foods');

  @override
  void addCalories({
    required FoodLog foodLog,
  }) {
    // TODO: implement addCalories
  }

  @override
  void addFood(Food food) {
    _foodCollectionRef
        .add(
          food.toJson(),
        )
        .whenComplete(() => print('${food.name} Added'));
  }

  @override
  Stream<Food> getFoods() {
    // TODO: implement getFoods
    throw UnimplementedError();
  }

  @override
  Future<List<FoodLog>> getTodaysFoodLog() {
    // TODO: implement getTodaysFoodLog
    throw UnimplementedError();
  }
}
