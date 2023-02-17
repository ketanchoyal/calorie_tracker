part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  factory HomeEvent.today() = TodayHomeEvent;
  factory HomeEvent.of(DateTime date) = SomeOtherDateHomeEvent;
  factory HomeEvent.updateNutrition({
    required double totalCarbs,
    required double totalFat,
    required double totalProtein,
    required double totalCalories,
    required bool hadExtraCarbs,
    required bool hadExtraFat,
    required bool hadExtraProtein,
  }) = HomeUpdateNutritionEvent;
  factory HomeEvent.updateBurnedCaloriesEvent({required num burnedCalories}) =
      UpdateBurnedCaloriesEvent;
}
