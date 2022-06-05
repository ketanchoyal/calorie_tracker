import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class AddFoodFormBloc extends FormBloc<String, String> {
  AddFoodFormBloc() : super(autoValidate: true) {
    addFieldBlocs(
      fieldBlocs: [
        name,
        description,
        servingSize,
        caloriesPerServing,
      ],
    );
  }

  final name = TextFieldBloc<String>();
  final description = TextFieldBloc<String?>();
  final imageUrl = TextFieldBloc<String?>();
  final servingSize = TextFieldBloc<double>();
  final caloriesPerServing = TextFieldBloc<double>();

  final fat = TextFieldBloc<double?>();
  final carbs = TextFieldBloc<double?>();
  final protein = TextFieldBloc<double?>();

  bool get isAdvanced => state.contains(fat);

  void advanced() {
    addFieldBlocs(
      fieldBlocs: [
        fat,
        carbs,
        protein,
      ],
    );
  }

  void basic() {
    removeFieldBlocs(
      fieldBlocs: [
        fat,
        carbs,
        protein,
      ],
    );
  }

  @override
  FutureOr<void> onSubmitting() {
    emitSuccess(
      successResponse: 'Successfully submitted',
    );
  }
}
