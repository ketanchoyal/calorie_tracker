import 'dart:async';

import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class AddFoodFormBloc extends FormBloc<String, String> {
  AddFoodFormBloc({
    required FirebaseService firebaseService,
  })  : _firebaseService = firebaseService,
        super(autoValidate: true) {
    addFieldBlocs(
      fieldBlocs: [
        name,
        description,
        caloriesPerServing,
      ],
    );
  }
  final FirebaseService _firebaseService;

  final name = TextFieldBloc<String>();
  final notes = TextFieldBloc<String?>();
  final description = TextFieldBloc<String?>();
  final imageUrl = TextFieldBloc<String?>();
  final caloriesPerServing = TextFieldBloc<double>();

  String? _barcode;

  final fat = TextFieldBloc<double?>();
  final carbs = TextFieldBloc<double?>();
  final protein = TextFieldBloc<double?>();

  bool get isAdvanced => state.contains(fat);

  void advanced() {
    addFieldBlocs(
      fieldBlocs: [fat, carbs, protein, notes],
    );
  }

  void basic() {
    removeFieldBlocs(
      fieldBlocs: [fat, carbs, protein, notes],
    );
  }

  void autoFillFoodData(Food food) {
    _barcode = food.barcode;
    name.updateValue(food.name);
    description.updateValue(food.description ?? '');
    caloriesPerServing.updateValue((food.nutrition.calories).toString());
    fat.updateValue((food.nutrition.fat).toString());
    carbs.updateValue((food.nutrition.carbs).toString());
    protein.updateValue((food.nutrition.protein).toString());
    notes.updateValue(food.notes ?? '');
    imageUrl.updateValue(food.imageUrl ?? '');
  }

  @override
  FutureOr<void> onSubmitting() {
    _firebaseService.addFood(
      Food(
        name: name.value,
        dateTime: DateTime.now(),
        notes: notes.value,
        barcode: _barcode,
        description: description.value,
        nutrition: Nutrition(
          calories: caloriesPerServing.valueToDouble!,
          carbs: carbs.valueToDouble,
          fat: fat.valueToDouble,
          protein: protein.valueToDouble,
        ),
      ),
    );
    emitSuccess(
      successResponse: 'Successfully submitted',
    );
  }
}
