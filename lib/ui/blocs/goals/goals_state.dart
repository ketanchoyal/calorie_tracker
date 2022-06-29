part of 'goals_bloc.dart';

@freezed
class GoalsState with _$GoalsState {
  const factory GoalsState.initial({
    @Default(0) double caloriesGoal,
    @Default(0) double proteinGoal,
    @Default(0) double carbsGoal,
    @Default(0) double fatGoals,
  }) = _Initial;
}
