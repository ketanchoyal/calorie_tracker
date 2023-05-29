import 'package:drop_down_list/drop_down_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
@Freezed(
  fromJson: false,
  toJson: false,
)
class Food with _$Food implements SearchableItem {
  factory Food({
    String? id,
    required String name,
    String? description,
    String? imageUrl,
    required Nutrition nutrition,
    String? barcode,
    String? notes,
    DateTime? dateTime,
  }) = _Food;

  Food._();

  factory Food.fromOpenFoodAPI({
    required String? id,
    required String name,
    required String? description,
    required String? imageUrl,
    required double calories,
    required double? fat,
    required double? carbs,
    required double? protein,
    required String barcode,
    required String? notes,
  }) =>
      Food(
        id: id,
        name: name,
        barcode: barcode,
        description: description,
        imageUrl: imageUrl,
        notes: notes,
        nutrition: Nutrition(
          calories: calories,
          fat: fat,
          carbs: carbs,
          protein: protein,
        ),
        dateTime: DateTime.now(),
      );

  /// Check [isOpenFoodProduct] to see if the product is an Open Food Product.
  /// if its true then make an API request to get the product details.
  /// if its false then we have all the details we need.
  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  factory Food.fromFirestore(
    Map<String, dynamic> json,
    String id,
  ) =>
      _$FoodFromJson(
        json
          ..addAll(
            <String, dynamic>{'id': id},
          ),
      );

  Map<String, dynamic> toJson() => _$FoodToJson(this);

  @override
  List<String> get searchableStrings =>
      [name, description ?? '', notes ?? '', barcode ?? '', id ?? ''];

  // bool get isOpenFoodProduct => barcode != null;

  // Nutrition get getNutrition => nutrition!;

  // double get getServingSize => servingSize!;
}

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
@Freezed(
  fromJson: false,
  toJson: false,
)
class Nutrition with _$Nutrition {
  factory Nutrition({
    required double calories,
    required double? fat,
    required double? carbs,
    required double? protein,
  }) = _Nutrition;

  Nutrition._();

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);

  Map<String, dynamic> toJson() => _$NutritionToJson(this);
}

final foods = [
  Food(
    name: 'Food 1',
    nutrition: Nutrition(
      calories: 200,
      fat: 12,
      carbs: 15,
      protein: 61,
    ),
  ),
  Food(
    name: 'Food 2',
    nutrition: Nutrition(
      calories: 500,
      fat: 12,
      carbs: 15,
      protein: 61,
    ),
  ),
  Food(
    name: 'Food 3',
    nutrition: Nutrition(
      calories: 300,
      fat: 5,
      carbs: 5,
      protein: 50,
    ),
  ),
];
