import 'package:calorie_tracker/core/models/add_health_data_result.dart';
import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/core/models/food_log/food_log.dart';

abstract class FirebaseService {
  void addFood(Food food);

  //If null then it'll be added to todays log
  Future<void> addCalories({
    required FoodLog foodLog,
    required DateTime foodLogDate,
  });

  Stream<List<FoodLog>> getFoodLog(DateTime date);

  Stream<List<Food>> getFoods();

  Future<void> deleteFoodLog({required String id, required DateTime date});

  Future<void> updateFoodLogHealthKitAddStatus({
    required String id,
    required AddDataResult addDataResult,
    required DateTime foodLogDate,
  });
}
