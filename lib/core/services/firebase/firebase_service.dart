import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/core/models/food_log/food_log.dart';

abstract class FirebaseService {
  void addFood(Food food);
  void addCalories({
    required FoodLog foodLog,
  });

  Future<List<FoodLog>> getTodaysFoodLog();

  Stream<List<Food>> getFoods();
}
