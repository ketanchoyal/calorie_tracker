import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class GoalFormBloc extends FormBloc<String, String> {
  GoalFormBloc() : super(autoValidate: true) {
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

  final name = TextFieldBloc<String>();

  final calories = TextFieldBloc<double>();

  final fat = TextFieldBloc<double?>();
  final carbs = TextFieldBloc<double?>();
  final protein = TextFieldBloc<double?>();

  @override
  FutureOr<void> onSubmitting() {}
}
