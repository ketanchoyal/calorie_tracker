import 'package:calorie_tracker/core/models/add_health_data_result.dart';
import 'package:calorie_tracker/core/models/food_log/food_log.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:calorie_tracker/core/services/health/health_service.dart';
import 'package:flutter/foundation.dart';
import 'package:health/health.dart';

class HealthServiceImpl implements HealthService {
  HealthServiceImpl(this._firebaseService);

  final FirebaseService _firebaseService;
  final _healthFactory = HealthFactory();
  @override
  Future<AddDataResult> addNutritionData(FoodLog foodLog) async {
    if (kIsWeb) return AddDataResult.web();
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
      );
    }
    if (foodLog.carbs != null && !carbsAdded) {
      carbsAdded = await _healthFactory.writeHealthData(
        foodLog.totalCarbs!,
        HealthDataType.DIETARY_CARBS_CONSUMED,
        foodLog.foodLogDate,
        foodLog.foodLogDate,
      );
    }
    if (foodLog.fat != null && !fatAdded) {
      fatAdded = await _healthFactory.writeHealthData(
        foodLog.totalFat!,
        HealthDataType.DIETARY_FATS_CONSUMED,
        foodLog.foodLogDate,
        foodLog.foodLogDate,
      );
    }
    if (foodLog.protein != null && !proteinAdded) {
      proteinAdded = await _healthFactory.writeHealthData(
        foodLog.totalProtein!,
        HealthDataType.DIETARY_PROTEIN_CONSUMED,
        foodLog.foodLogDate,
        foodLog.foodLogDate,
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
  Future<bool> requestAuthorization() async {
    if (kIsWeb) return false;
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
}
