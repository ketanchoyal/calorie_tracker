import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goals_state.dart';
part 'goals_event.dart';
part 'goals_bloc.freezed.dart';

class GoalsBloc extends Bloc<GoalsEvent, GoalsState> {
  GoalsBloc() : super(const GoalsState.initial()) {
    on<UpdateGoalsEvent>(_mapUpdateGoalsEvent);
    getGoals();
  }

  Future<void> getGoals() async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    add(
      const UpdateGoalsEvent(
        caloriesGoal: 2300,
        proteinGoal: 173,
        carbsGoal: 265,
        fatGoals: 77,
      ),
    );
  }

  FutureOr<void> _mapUpdateGoalsEvent(
    UpdateGoalsEvent event,
    Emitter<GoalsState> emit,
  ) {
    emit(
      state.copyWith(
        caloriesGoal: event.caloriesGoal,
        proteinGoal: event.proteinGoal,
        carbsGoal: event.carbsGoal,
        fatGoals: event.fatGoals,
      ),
    );
  }
}
