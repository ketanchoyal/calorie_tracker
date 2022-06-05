import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_log.freezed.dart';
part 'food_log.g.dart';

@freezed
class FoodLog with _$FoodLog {
  factory FoodLog({
    required String id,
    required String name,
    required double calories,
    required double protein,
    required double carbs,
    required DateTime date,
    required dynamic foodReference,
    required double servingEaten,
    required double servingSize,
    required String barcode,
  }) = _FoodLog;

  factory FoodLog.fromJson(Map<String, dynamic> json) =>
      _$FoodLogFromJson(json);
}
