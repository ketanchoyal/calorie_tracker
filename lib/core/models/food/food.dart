import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
class Food with _$Food {
  factory Food({
    String? id,
    required String name,
    String? description,
    String? imageUrl,
    required double servingSize,
    required Nutrition nutrition,
    String? barcode,
  }) = _Food;

  Food._();

  factory Food.fromOpenFoodAPI({
    required String? id,
    required String name,
    required String? description,
    required String? imageUrl,
    required double servingSize,
    required double calories,
    required double? fat,
    required double? carbs,
    required double? protein,
    required String barcode,
  }) =>
      Food(
        id: id,
        name: name,
        barcode: barcode,
        description: description,
        imageUrl: imageUrl,
        servingSize: servingSize,
        nutrition: Nutrition(
          calories: calories,
          fat: fat,
          carbs: carbs,
          protein: protein,
        ),
      );

  /// Check [isOpenFoodProduct] to see if the product is an Open Food Product.
  /// if its true then make an API request to get the product details.
  /// if its false then we have all the details we need.
  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  // bool get isOpenFoodProduct => barcode != null;

  // Nutrition get getNutrition => nutrition!;

  // double get getServingSize => servingSize!;
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
