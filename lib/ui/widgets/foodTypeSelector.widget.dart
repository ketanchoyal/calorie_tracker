import 'package:calorie_tracker/core/enums/food_type.enum.dart';
import 'package:calorie_tracker/ui/extensions/light_dark_color/theme+extension.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

class FoodTypeSelector extends StatelessWidget {
  const FoodTypeSelector({
    super.key,
    required this.radioButtonValue,
  });
  final void Function(FoodType) radioButtonValue;

  @override
  Widget build(BuildContext context) {
    return CustomRadioButton<FoodType>(
      buttonValues: FoodType.values,
      buttonLables: FoodType.values.map((e) => e.displayName).toList(),
      radioButtonValue: radioButtonValue,
      defaultSelected: FoodType.other,
      autoWidth: true,
      height: 45,
      buttonTextStyle: ButtonTextStyle(
        selectedColor: context.color.when(
          light: () => Colors.black,
          dark: () => Colors.white,
        ),
        unSelectedColor: context.color.when(
          light: () => Colors.black,
          dark: () => Colors.white,
        ),
      ),
      selectedColor: context.color.when(
        light: () => Theme.of(context).primaryColor,
        dark: () => Theme.of(context).primaryColorDark,
      ),
      unSelectedColor: Theme.of(context).canvasColor,
    );
  }
}
