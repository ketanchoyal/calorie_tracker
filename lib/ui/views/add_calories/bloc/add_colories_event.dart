part of 'add_colories_bloc.dart';

@freezed
class AddColoriesEvent with _$AddColoriesEvent {
  factory AddColoriesEvent.reset() = _Reset;
  factory AddColoriesEvent.selectFood({required Food food}) = _SelectFoodEvent;

  factory AddColoriesEvent.quickAddFood() = _QuickAddFoodEvent;

  factory AddColoriesEvent.submit({
    required double servings,
    double? caloriesPerServing,
    double? fat,
    double? carbs,
    double? protein,
  }) = _SubmitEvent;
}
