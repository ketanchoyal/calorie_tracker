part of 'add_colories_bloc.dart';

class QuickAddCaloriesFormBloc extends FormBloc<String, String> {
  QuickAddCaloriesFormBloc() : super(autoValidate: true) {
    addFieldBlocs(
      fieldBlocs: [
        title,
        calories,
        fat,
        carbs,
        protein,
      ],
    );
  }
  final title = TextFieldBloc<String>();

  final calories = TextFieldBloc<double>();
  final fat = TextFieldBloc<double?>();
  final carbs = TextFieldBloc<double?>();
  final protein = TextFieldBloc<double?>();

  @override
  FutureOr<void> onSubmitting() {}
}
