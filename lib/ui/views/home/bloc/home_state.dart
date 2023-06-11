part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required DateTime date,
    @Default(0) double totalCalories,
    @Default(0) double totalProtein,
    @Default(0) double totalCarbs,
    @Default(0) double totalFat,
    // @Default(false) bool hadExtraCarbs,
    // @Default(false) bool hadExtraFat,
    // @Default(false) bool hadExtraProtein,
    @Default(0.0) num totalBurnedCalories,
    @Default(null) FoodLog? copiedData,
    // @Default(null) Goals? goals,
  }) = _HomeState;
}
