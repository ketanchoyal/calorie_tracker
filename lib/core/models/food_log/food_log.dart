import 'package:calorie_tracker/core/enums/food_type.enum.dart';
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
    @JsonEnum() @Default(FoodType.other) FoodType foodType,
    double? protein,
    double? carbs,
    double? fat,

    ///The date the food was added to the log.
    required DateTime date,

    /// This is the date when this food was eaten. It's not the date the foodLog was added.
    required DateTime foodLogDate,
    @JsonKey(defaultValue: false, nullable: false)
    @Default(false)
        bool isCarbsAddedToHealthKit,
    @JsonKey(defaultValue: false, nullable: false)
    @Default(false)
        bool isFatAddedToHealthKit,
    @JsonKey(defaultValue: false, nullable: false)
    @Default(false)
        bool isProteinAddedToHealthKit,
    @JsonKey(defaultValue: false, nullable: false)
    @Default(false)
        bool isCaloriesAddedToHealthKit,
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
    DateTime date,
  ) =>
      _$FoodLogFromJson(
        json
          ..addAll(
            <String, dynamic>{
              'id': id,
              'foodLogDate': json['foodLogDate'] ?? date.toIso8601String(),
            },
          ),
      );

  Map<String, dynamic> toJson() => _$FoodLogToJson(this);

  double get totalCaloriesEaten {
    return caloriesPerServing * servingEaten;
  }

  double? get totalProtein {
    return protein != null ? protein! * servingEaten : null;
  }

  double? get totalCarbs {
    return carbs != null ? carbs! * servingEaten : null;
  }

  double? get totalFat {
    return fat != null ? fat! * servingEaten : null;
  }

  bool get allAdded {
    return (totalCarbs == null || isCarbsAddedToHealthKit) &&
        (totalFat == null || isFatAddedToHealthKit) &&
        (totalProtein == null || isProteinAddedToHealthKit) &&
        isCaloriesAddedToHealthKit;
  }

  bool get anyThingAdded {
    return [
      isCarbsAddedToHealthKit,
      isFatAddedToHealthKit,
      isProteinAddedToHealthKit,
      isCaloriesAddedToHealthKit
    ].contains(true);
  }
}
