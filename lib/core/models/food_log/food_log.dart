import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_log.freezed.dart';
part 'food_log.g.dart';

@freezed
class FoodLog with _$FoodLog {
  factory FoodLog({
    required String id,
    required String name,
    required double caloriesPerServing,
    double? protein,
    double? carbs,
    double? fat,
    required DateTime date,
    String? foodReference,
    //will be the actual serving size eaten,
    required double servingEaten,
    // Serving size will always be 1 so removing it from everywhere else
    // required double servingSize,
  }) = _FoodLog;

  factory FoodLog.fromJson(Map<String, dynamic> json) =>
      _$FoodLogFromJson(json);
}
