part of 'add_calories.view.dart';

class _AddCaloriesForm extends StatelessWidget {
  const _AddCaloriesForm();

  @override
  Widget build(BuildContext context) {
    final state = context.read<AddColoriesBloc>().state as SelectFoodState;
    final food = state.food;
    final formBloc = BlocProvider.of<AddCaloriesFormBloc>(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: ScrollableFormBlocManager(
        formBloc: formBloc,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const _FoodDetails(),
            const SizedBox(height: 16),
            FormTextField(
              fieldBloc: formBloc.servingToAdd,
              label: 'Servings',
              prefixIcon: FontAwesomeIcons.bowlFood,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 8),
            FoodTypeSelector(
              radioButtonValue: (foodType) => formBloc.foodType = foodType,
            ),
            AnimatedCrossFade(
              firstChild: const SizedBox(),
              secondChild: Column(
                children: [
                  const SizedBox(height: 5),
                  const Divider(),
                  Text(
                    'This will modify values for just this instance \n Nutrition per Serving',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 5),
                ],
              ),
              crossFadeState: context.watch<AddCaloriesFormBloc>().isModifying
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
            ),
            FormTextField(
              fieldBloc: formBloc.caloriesPerServing,
              label: 'Calories per Serving',
              prefixIcon: FontAwesomeIcons.bowlRice,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            FormTextField(
              fieldBloc: formBloc.fat,
              label: 'Fat',
              isOptional: true,
              prefixIcon: FontAwesomeIcons.burger,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            FormTextField(
              fieldBloc: formBloc.carbs,
              label: 'Carbs',
              isOptional: true,
              prefixIcon: Icons.fastfood_rounded,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            FormTextField(
              fieldBloc: formBloc.protein,
              label: 'Protein',
              isOptional: true,
              prefixIcon: FontAwesomeIcons.nutritionix,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 16),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: context.color.when(
                  light: () => Colors.black12,
                  dark: () => Colors.white10,
                ),
                minimumSize: const Size(double.infinity, 55),
              ),
              onPressed: () {
                if (formBloc.isModifying) {
                  formBloc.unmodify();
                } else {
                  formBloc.modify();
                }
              },
              child: context.watch<AddCaloriesFormBloc>().isModifying
                  ? const Text('Unmodify Nutrition Values')
                  : const Text('Modify Nutrition Values'),
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: food.incredients?.length ?? 0,
            //   itemBuilder: (BuildContext context, int index) {
            //     return IngredientWidget(
            //       incredient: food.incredients![index],
            //     );
            //   },
            // ),
            if (food.incredients != null && food.incredients!.isNotEmpty) ...[
              const SizedBox(height: 16),
              const Text(
                'Incredients',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              ...food.incredients!
                  .map((e) => IngredientWidget(
                        incredient: e,
                        allowEdit: false,
                      ))
                  .toList()
            ],
            if (food.notes != null && food.notes!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(
                'Notes: ${food.notes}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
            if (food.description != null && food.description!.isNotEmpty) ...[
              const SizedBox(height: 16),
              Text(
                'Description: ${food.description}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _FoodDetails extends StatelessWidget {
  const _FoodDetails();

  @override
  Widget build(BuildContext context) {
    final state = context.read<AddColoriesBloc>().state as SelectFoodState;
    final food = state.food;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                food.name,
                maxLines: 2,
                // overflow: TextOverflow.ellipsis,
                semanticsLabel: 'Some very tasty food name',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            //Calories
            Flexible(
              flex: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    food.nutrition.calories.toString(),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                  ),
                  Text(
                    'CALORIES',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(),
        const SizedBox(height: 0),
        Text(
          'Nutrition in every Serving',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'FAT',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                        ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    '${food.nutrition.fat}g',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'CARBS',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                        ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    '${food.nutrition.carbs}g',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'PROTEIN',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                        ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    '${food.nutrition.protein}g',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(),
      ],
    );
  }
}

class _FoodServings extends StatelessWidget {
  const _FoodServings();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // TextField to enter servings
        TextField(
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            labelText: 'Servings',
            prefixIcon: Icon(FontAwesomeIcons.bowlFood),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
