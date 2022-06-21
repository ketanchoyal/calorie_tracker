part of 'add_colories_bloc.dart';

class AddCaloriesFormBloc extends FormBloc<String, String> {
  AddCaloriesFormBloc(this._food) : super(autoValidate: true) {
    addFieldBlocs(
      fieldBlocs: [
        servingToAdd,
      ],
    );
  }
  final Food _food;
  late final servingToAdd = TextFieldBloc<double>(
    initialValue: _food.servingSize.toString(),
  );

  late final caloriesPerServing = TextFieldBloc<double>(
    initialValue: _food.nutrition.calories.toString(),
  );
  late final fat = TextFieldBloc<double>(
    initialValue: _food.nutrition.fat.toString(),
  );
  late final carbs = TextFieldBloc<double>(
    initialValue: _food.nutrition.carbs.toString(),
  );
  late final protein = TextFieldBloc<double>(
    initialValue: _food.nutrition.protein.toString(),
  );

  bool get isModifying => state.contains(caloriesPerServing);

  // void autoFillWith(Food food) {
  //   fat.updateValue(food.nutrition.fat.toString());
  //   carbs.updateValue(food.nutrition.carbs.toString());
  //   protein.updateValue(food.nutrition.protein.toString());
  //   caloriesPerServing.updateValue(food.nutrition.calories.toString());
  // }

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
