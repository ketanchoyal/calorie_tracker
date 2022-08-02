import 'dart:async';

import 'package:calorie_tracker/core/models/profile/profile.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class GoalFormBloc extends FormBloc<String, String> {
  GoalFormBloc({
    required FirebaseService firebaseService,
    required double caloriesGoal,
    required double proteinGoal,
    required double carbsGoal,
    required double fatGoal,
  })  : _firebaseService = firebaseService,
        super(autoValidate: true) {
    calories.updateInitialValue(caloriesGoal.toString());
    protein.updateInitialValue(proteinGoal.toString());
    carbs.updateInitialValue(carbsGoal.toString());
    fat.updateInitialValue(fatGoal.toString());
    addFieldBlocs(
      fieldBlocs: [
        name,
        calories,
        protein,
        carbs,
        fat,
      ],
    );
  }

  final FirebaseService _firebaseService;

  final name = TextFieldBloc<String>();

  final calories = TextFieldBloc<double>();

  final fat = TextFieldBloc<double>();
  final carbs = TextFieldBloc<double>();
  final protein = TextFieldBloc<double>();

  @override
  FutureOr<void> onSubmitting() async {
    await _firebaseService.setProfile(
      profile: Profile(
        goals: Goals(
          calories: calories.valueToDouble ?? 0,
          protein: protein.valueToDouble ?? 0,
          fat: fat.valueToDouble ?? 0,
          carbs: carbs.valueToDouble ?? 0,
        ),
      ),
    );
    emitSuccess();
  }
}
