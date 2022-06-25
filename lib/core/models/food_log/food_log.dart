import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_log.freezed.dart';
part 'food_log.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
@Freezed(
  fromJson: false,
  toJson: false,
)
class FoodLog with _$FoodLog {
  factory FoodLog({
    String? id,
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

  FoodLog._();

  factory FoodLog.fromJson(Map<String, dynamic> json) =>
      _$FoodLogFromJson(json);

  factory FoodLog.fromFirestore(
    Map<String, dynamic> json,
    String id,
  ) =>
      _$FoodLogFromJson(
        json
          ..addAll(
            <String, dynamic>{'id': id},
          ),
      );

  Map<String, dynamic> toJson() => _$FoodLogToJson(this);
}
