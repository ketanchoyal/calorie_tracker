import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
class Food with _$Food {
  factory Food({
    required String? id,
    required String name,
    required String? description,
    required String? imageUrl,
    required double servingSize,
    required double caloriesPerServing,
    required Nutrition? nutrition,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}

@freezed
class Nutrition with _$Nutrition {
  factory Nutrition({
    required double calories,
    required double? fat,
    required double? carbs,
    required double? protein,
  }) = _Nutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);
}
