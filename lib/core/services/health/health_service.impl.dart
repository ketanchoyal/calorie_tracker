import 'dart:io';

import 'package:calorie_tracker/core/models/add_health_data_result.dart';
import 'package:calorie_tracker/core/models/food_log/food_log.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.impl.dart';
import 'package:calorie_tracker/core/services/health/health_service.dart';
import 'package:flutter/foundation.dart';
import 'package:health/health.dart';

class HealthServiceImpl implements HealthService {
  HealthServiceImpl(this._firebaseService);

  final FirebaseService _firebaseService;
  final _healthFactory = HealthFactory();
  @override
  Future<AddDataResult> addNutritionData(FoodLog foodLog) async {
    if (kIsWeb || Platform.isMacOS) return AddDataResult.web();
    _throwThisIfNotUsingTestAccont();
    var carbsAdded = foodLog.isCarbsAddedToHealthKit;
    var fatAdded = foodLog.isFatAddedToHealthKit;
    var proteinAdded = foodLog.isProteinAddedToHealthKit;
    var caloriesAdded = foodLog.isCaloriesAddedToHealthKit;

    if (!caloriesAdded) {
      caloriesAdded = await _healthFactory.writeHealthData(
        foodLog.totalCaloriesEaten,
        HealthDataType.DIETARY_ENERGY_CONSUMED,
        foodLog.foodLogDate,
        foodLog.foodLogDate,
        unit: HealthDataUnit.LARGE_CALORIE,
        metaDataKeySyncIdentifier: foodLog.id,
      );
    }
    if (foodLog.carbs != null && !carbsAdded) {
      carbsAdded = await _healthFactory.writeHealthData(
        foodLog.totalCarbs!,
        HealthDataType.DIETARY_CARBS_CONSUMED,
        foodLog.foodLogDate,
        foodLog.foodLogDate,
        metaDataKeySyncIdentifier: foodLog.id,
      );
    }
    if (foodLog.fat != null && !fatAdded) {
      fatAdded = await _healthFactory.writeHealthData(
        foodLog.totalFat!,
        HealthDataType.DIETARY_FATS_CONSUMED,
        foodLog.foodLogDate,
        foodLog.foodLogDate,
        metaDataKeySyncIdentifier: foodLog.id,
      );
    }
    if (foodLog.protein != null && !proteinAdded) {
      proteinAdded = await _healthFactory.writeHealthData(
        foodLog.totalProtein!,
        HealthDataType.DIETARY_PROTEIN_CONSUMED,
        foodLog.foodLogDate,
        foodLog.foodLogDate,
        metaDataKeySyncIdentifier: foodLog.id,
      );
    }

    final result = AddDataResult(
      carbsAdded: carbsAdded,
      fatAdded: fatAdded,
      proteinAdded: proteinAdded,
      caloriesAdded: caloriesAdded,
    );

    await _firebaseService.updateFoodLogHealthKitAddStatus(
      id: foodLog.id!,
      addDataResult: result,
      foodLogDate: foodLog.foodLogDate,
    );

    return result;
  }

  @override
  Future<bool> deleteNutritionData(FoodLog foodLog) async {
    var carbsAdded = foodLog.isCarbsAddedToHealthKit;
    var fatAdded = foodLog.isFatAddedToHealthKit;
    var proteinAdded = foodLog.isProteinAddedToHealthKit;
    var caloriesAdded = foodLog.isCaloriesAddedToHealthKit;

    if ((kIsWeb || Platform.isMacOS) && foodLog.anyThingAdded) {
      return false;
    }

    if (!(kIsWeb || Platform.isMacOS)) {
      if (caloriesAdded) {
        caloriesAdded = await _healthFactory.deleteHealthData(
          HealthDataType.DIETARY_ENERGY_CONSUMED,
          foodLog.id!,
        );
      }
      if (foodLog.carbs != null && carbsAdded) {
        carbsAdded = await _healthFactory.deleteHealthData(
          HealthDataType.DIETARY_CARBS_CONSUMED,
          foodLog.id!,
        );
      }
      if (foodLog.fat != null && fatAdded) {
        fatAdded = await _healthFactory.deleteHealthData(
          HealthDataType.DIETARY_FATS_CONSUMED,
          foodLog.id!,
        );
      }
      if (foodLog.protein != null && proteinAdded) {
        proteinAdded = await _healthFactory.deleteHealthData(
          HealthDataType.DIETARY_PROTEIN_CONSUMED,
          foodLog.id!,
        );
      }
    }
    await _firebaseService.deleteFoodLog(
      id: foodLog.id!,
      date: foodLog.foodLogDate,
    );
    return true;
  }

  @override
  Future<bool> requestAuthorization() async {
    if (kIsWeb || Platform.isMacOS) return false;
    return _healthFactory.requestAuthorization(
      [
        HealthDataType.DIETARY_CARBS_CONSUMED,
        HealthDataType.DIETARY_FATS_CONSUMED,
        HealthDataType.DIETARY_PROTEIN_CONSUMED,
        HealthDataType.DIETARY_ENERGY_CONSUMED,
      ],
      permissions: [
        HealthDataAccess.READ_WRITE,
        HealthDataAccess.READ_WRITE,
        HealthDataAccess.READ_WRITE,
        HealthDataAccess.READ_WRITE
      ],
    );
  }

  void _throwThisIfNotUsingTestAccont() =>
      (_firebaseService as FirebaseServiceImpl).throwThisIfNotUsingTestAccont();

  @override
  Future<num> getBurnedCalories() async {
    if (kIsWeb || Platform.isMacOS) return 0;
    final data = await _healthFactory.getHealthDataFromTypes(
      DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
      ),
      DateTime.now(),
      [HealthDataType.ACTIVE_ENERGY_BURNED],
    );
    final totalBurnedcalories = await compute(_calculateBurnedCalories, data);
    print('Total Burned Calories: $totalBurnedcalories');
    return totalBurnedcalories;
  }
}

num _calculateBurnedCalories(List<HealthDataPoint> data) {
  num totalBurnedcalories = 0.0;
  for (final element in data) {
    if (element.value is NumericHealthValue) {
      totalBurnedcalories += (element.value as NumericHealthValue).numericValue;
    }
  }
  return totalBurnedcalories;
}
