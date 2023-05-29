import 'package:calorie_tracker/core/models/food/food.dart';

typedef FoodData = ({Food? food, String? error});

abstract class OpenFoodAPIService {
  Future<FoodData> getFoodData(String barcode);

  Future<dynamic> getAutoCompleteData(String query);
}

extension FoodDataExtension on FoodData {
  //Fold Method Extension
  T fold<T>(
    T Function(Food food) ifFood,
    T Function(String error) ifError,
  ) {
    if (food != null) {
      return ifFood(food!);
    } else {
      return ifError(error!);
    }
  }
}
