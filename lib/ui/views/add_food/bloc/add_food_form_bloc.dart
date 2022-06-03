import 'dart:async';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class AddFoodFormBloc extends FormBloc<String, String> {
  AddFoodFormBloc() : super(autoValidate: true);

  final name = TextFieldBloc<String>();
  final description = TextFieldBloc<String?>();
  final imageUrl = TextFieldBloc<String?>();
  final servingSize = TextFieldBloc<double>();
  final caloriesPerServing = TextFieldBloc<double>();

  final fat = TextFieldBloc<double?>();
  final carbs = TextFieldBloc<double?>();
  final protein = TextFieldBloc<double?>();

  @override
  FutureOr<void> onSubmitting() {
    emitSuccess(
      successResponse: 'Successfully submitted',
    );
  }
}
