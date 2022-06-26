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

  CollectionReference<Food> get _foodCollectionRef =>
      _currentUserRef.collection('foods').withConverter<Food>(
            fromFirestore: (snapshot, _) =>
                Food.fromFirestore(snapshot.data()!, snapshot.id),
            toFirestore: (food, _) => food.toJson(),
          );
  CollectionReference<FoodLog> _foodLogCollectionRef(DateTime date) =>
      _currentUserRef
          .collection('foodLog')
          .doc(date.toString().split(' ').first.trim())
          .collection(DateTime.now().day.toString())
          .withConverter<FoodLog>(
            fromFirestore: (snapshot, _) =>
                FoodLog.fromFirestore(snapshot.data()!, snapshot.id),
            toFirestore: (foodLog, _) => foodLog.toJson(),
          );

  @override
  Future<void> addCalories({required FoodLog foodLog, DateTime? date}) async {
    await _foodLogCollectionRef(date ?? DateTime.now())
        .add(foodLog)
        .whenComplete(() => print('${foodLog.name} Added'));
  }

  @override
  void addFood(Food food) {
    _foodCollectionRef
        .add(food)
        .whenComplete(() => print('${food.name} Added'));
  }

  @override
  Stream<List<Food>> getFoods() {
    final foodList = _foodCollectionRef.snapshots().map(
          (event) => event.docs
              .map(
                (e) => e.data(),
              )
              .toList(),
        );
    return foodList;
  }

  @override
  Stream<List<FoodLog>> getFoodLog(DateTime date) {
    final foodLogList = _foodLogCollectionRef(date).snapshots().map(
          (event) => event.docs
              .map(
                (e) => e.data(),
              )
              .toList(),
        );
    return foodLogList;
  }
}
