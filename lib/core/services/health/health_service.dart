import 'package:calorie_tracker/core/models/add_health_data_result.dart';
import 'package:calorie_tracker/core/models/food_log/food_log.dart';

abstract class HealthService {
  Future<bool> requestAuthorization();

  Future<AddDataResult> addNutritionData(FoodLog foodLog);

  Future<bool> deleteNutritionData(FoodLog foodLog);
}
