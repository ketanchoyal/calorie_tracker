part of 'add_colories_bloc.dart';

@freezed
class AddColoriesEvent with _$AddColoriesEvent {
  factory AddColoriesEvent.reset() = _Reset;
  factory AddColoriesEvent.selectFood({required Food food}) = _SelectFoodEvent;

  factory AddColoriesEvent.quickAddFood() = _QuickAddFoodEvent;

  factory AddColoriesEvent.submit({
    required double servings,
    required double caloriesPerServing,
    required DateTime foodLogDate,
    String? name,
    Food? food,
    double? fat,
    double? carbs,
    double? protein,
    required FoodType foodType,
  }) = _SubmitEvent;
}
