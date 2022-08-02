part of 'goals_bloc.dart';

@freezed
class GoalsEvent with _$GoalsEvent {
  const GoalsEvent._();
  const factory GoalsEvent.update({required Goals goals}) = UpdateGoalsEvent;
}
