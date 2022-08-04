import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:calorie_tracker/core/models/profile/profile.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goals_state.dart';
part 'goals_event.dart';
part 'goals_bloc.freezed.dart';

class GoalsBloc extends Bloc<GoalsEvent, GoalsState> {
  GoalsBloc({
    required this.firebaseService,
  }) : super(const GoalsState.initial()) {
    on<UpdateGoalsEvent>(_mapUpdateGoalsEvent);
    getGoals();
  }

  final FirebaseService firebaseService;

  Future<void> getGoals() async {
    final profile = await firebaseService.getProfileData();
    if (profile != null && profile.goals != null) {
      add(
        UpdateGoalsEvent(
          goals: profile.goals!,
        ),
      );
    } else {}
  }

  void resetGoals() {
    add(
      UpdateGoalsEvent(
        goals: Goals(calories: 0, protein: 0, fat: 0, carbs: 0),
      ),
    );
  }

  FutureOr<void> _mapUpdateGoalsEvent(
    UpdateGoalsEvent event,
    Emitter<GoalsState> emit,
  ) {
    emit(
      state.copyWith(
        caloriesGoal: event.goals.calories,
        proteinGoal: event.goals.protein,
        carbsGoal: event.goals.carbs,
        fatGoal: event.goals.fat,
      ),
    );
  }
}
