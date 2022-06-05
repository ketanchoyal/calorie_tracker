part of 'add_colories_bloc.dart';

class AddCaloriesFormBloc extends FormBloc<String, String> {
  AddCaloriesFormBloc() : super(autoValidate: true) {
    addFieldBlocs(
      fieldBlocs: [
        servingToAdd,
      ],
    );
  }
  final servingToAdd = TextFieldBloc<double>();

  final caloriesPerServing = TextFieldBloc<double>();
  final fat = TextFieldBloc<double?>();
  final carbs = TextFieldBloc<double?>();
  final protein = TextFieldBloc<double?>();

  bool get isModifying => state.contains(caloriesPerServing);

  void modify() {
    addFieldBlocs(
      fieldBlocs: [
        caloriesPerServing,
        fat,
        carbs,
        protein,
      ],
    );
  }

  void unmodify() {
    removeFieldBlocs(
      fieldBlocs: [
        caloriesPerServing,
        fat,
        carbs,
        protein,
      ],
    );
  }

  @override
  FutureOr<void> onSubmitting() {}
}
