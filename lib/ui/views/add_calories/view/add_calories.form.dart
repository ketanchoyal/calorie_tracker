part of 'add_calories.view.dart';

class _AddCaloriesForm extends StatelessWidget {
  const _AddCaloriesForm({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<AddColoriesBloc>().prevState as SelectFoodState;
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
            ),
            AnimatedCrossFade(
              firstChild: const SizedBox(),
              secondChild: Column(
                children: [
                  const SizedBox(height: 5),
                  const Divider(),
                  Text(
                    'This will modify values for just this instance',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption,
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
          ],
        ),
      ),
    );
  }
}

class _FoodDetails extends StatelessWidget {
  const _FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<AddColoriesBloc>().prevState as SelectFoodState;
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
                style: Theme.of(context).textTheme.headline4?.copyWith(
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
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                  ),
                  Text(
                    'CALORIES',
                    style: Theme.of(context).textTheme.caption?.copyWith(
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
          'Nutrition in every ${food.servingSize} Serving',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
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
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
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
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
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
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
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
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
  const _FoodServings({super.key});

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
