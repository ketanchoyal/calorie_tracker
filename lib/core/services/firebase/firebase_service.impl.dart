import 'package:calorie_tracker/core/models/add_health_data_result.dart';
import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/core/models/food_log/food_log.dart';
import 'package:calorie_tracker/core/models/profile/profile.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FirebaseServiceImpl implements FirebaseService {
  final _firebaseFirestore = FirebaseFirestore.instance;
  final _firebaseAuth = FirebaseAuth.instance;

  // DocumentReference get _currentUserRef =>
  //     _firebaseFirestore.collection('users').doc('ketanchoyal@gmail.com');
  DocumentReference<Profile?> get _currentUserRef => _firebaseFirestore
      .collection('users')
      .doc(_firebaseAuth.currentUser!.email ?? _firebaseAuth.currentUser!.uid)
      .withConverter<Profile?>(
        fromFirestore: (snapshot, _) {
          return snapshot.data() == null
              ? null
              : Profile.fromJson(snapshot.data()!);
        },
        toFirestore: (profile, _) => profile?.toJson() ?? {},
      );

  CollectionReference<Food> get _foodCollectionRef =>
      _currentUserRef.collection('foods').withConverter<Food>(
            fromFirestore: (snapshot, _) =>
                Food.fromFirestore(snapshot.data()!, snapshot.id),
            toFirestore: (food, _) => food.toJson(),
          );
  CollectionReference<FoodLog> _foodLogCollectionRef(DateTime date) {
    final doc = '${date.year}-${date.month}';
    return _currentUserRef
        .collection('foodLog')
        .doc(doc)
        .collection(date.day.toString())
        .withConverter<FoodLog>(
          fromFirestore: (snapshot, _) => FoodLog.fromFirestore(
            snapshot.data()!,
            snapshot.id,
            DateTime(
              date.year,
              date.month,
              date.day,
            ),
          ),
          toFirestore: (foodLog, _) => foodLog.toJson(),
        );
  }

  @override
  Future<void> setProfile({required Profile profile}) async {
    if (_firebaseAuth.currentUser == null) {
      return;
    }
    await _currentUserRef.set(
      profile,
      SetOptions(merge: true),
    );
  }

  @override
  Future<Profile?> getProfileData() async {
    if (_firebaseAuth.currentUser == null) {
      return null;
    }
    return _currentUserRef.get().then((value) => value.data());
  }

  @override
  Future<void> addCalories({
    required FoodLog foodLog,
    required DateTime foodLogDate,
  }) async {
    throwThisIfNotUsingTestAccont();
    if (_firebaseAuth.currentUser == null) {
      return;
    }
    await _foodLogCollectionRef(foodLogDate)
        .add(foodLog)
        .whenComplete(() => print('${foodLog.name} Added'));
  }

  @override
  void addFood(Food food) {
    throwThisIfNotUsingTestAccont();
    if (_firebaseAuth.currentUser == null) {
      return;
    }
    _foodCollectionRef
        .add(food)
        .whenComplete(() => print('${food.name} Added'));
  }

  @override
  Stream<List<Food>> getFoods() {
    if (_firebaseAuth.currentUser == null) {
      return Stream.value([]);
    }
    // _throwThisIfNotUsingTestAccont();
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
    if (_firebaseAuth.currentUser == null) {
      return Stream.value([]);
    }
    // _throwThisIfNotUsingTestAccont();
    final foodLogList = _foodLogCollectionRef(date).snapshots().map(
          (event) => event.docs
              .map(
                (e) => e.data(),
              )
              .toList(),
        );
    return foodLogList;
  }

  @override
  Future<void> deleteFoodLog({
    required String id,
    required DateTime date,
  }) async {
    await _foodLogCollectionRef(date).doc(id).delete();
  }

  @override
  Future<void> updateFoodLogHealthKitAddStatus({
    required String id,
    required AddDataResult addDataResult,
    required DateTime foodLogDate,
  }) async {
    throwThisIfNotUsingTestAccont();
    if (addDataResult.anyTrue) {
      await _foodLogCollectionRef(foodLogDate).doc(id).update({
        'isCarbsAddedToHealthKit': addDataResult.carbsAdded,
        'isFatAddedToHealthKit': addDataResult.fatAdded,
        'isProteinAddedToHealthKit': addDataResult.proteinAdded,
        'isCaloriesAddedToHealthKit': addDataResult.caloriesAdded,
        'foodLogDate':
            DateTime(foodLogDate.year, foodLogDate.month, foodLogDate.day)
                .toIso8601String(),
      });
    }
  }

  void throwThisIfNotUsingTestAccont() {
    if (_currentUserRef.id == 'ketanchoyal@gmail.com' && !kReleaseMode) {
      throw 'You are using the real account. Please use a test account.';
    }
  }
}
