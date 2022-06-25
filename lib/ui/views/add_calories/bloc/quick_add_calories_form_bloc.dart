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

  FoodType _foodType = FoodType.other;
  FoodType get foodType => _foodType;
  set foodType(FoodType value) => _foodType = value;

  @override
  FutureOr<void> onSubmitting() {}
}
