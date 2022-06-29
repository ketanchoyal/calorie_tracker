part of 'goals_bloc.dart';

@freezed
class GoalsEvent with _$GoalsEvent {
  const GoalsEvent._();
  const factory GoalsEvent.update({
    required double caloriesGoal,
    required double proteinGoal,
    required double carbsGoal,
    required double fatGoals,
  }) = UpdateGoalsEvent;
}
