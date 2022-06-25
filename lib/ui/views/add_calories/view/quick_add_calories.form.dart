part of 'add_calories.view.dart';

class _QuickAddCaloriesForm extends StatelessWidget {
  const _QuickAddCaloriesForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formBloc = BlocProvider.of<QuickAddCaloriesFormBloc>(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: ScrollableFormBlocManager(
        formBloc: formBloc,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 16),
            FormTextField(
              fieldBloc: formBloc.title,
              label: 'Title',
              prefixIcon: FontAwesomeIcons.bowlFood,
            ),
            // AnimatedCrossFade(
            //   firstChild: const SizedBox(),
            //   secondChild: Column(
            //     children: [
            //       const SizedBox(height: 5),
            //       const Divider(),
            //       Text(
            //         'This will modify values for just this instance',
            //         textAlign: TextAlign.center,
            //         style: Theme.of(context).textTheme.caption,
            //       ),
            //       const SizedBox(height: 5),
            //     ],
            //   ),
            //   crossFadeState: context.watch<QuickAddCaloriesFormBloc>().isModifying
            //       ? CrossFadeState.showSecond
            //       : CrossFadeState.showFirst,
            //   duration: const Duration(milliseconds: 300),
            // ),
            FormTextField(
              fieldBloc: formBloc.calories,
              label: 'Calories',
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
              prefixIcon: FontAwesomeIcons.appleAlt,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 8),
            FoodTypeSelector(
              radioButtonValue: (foodType) => formBloc.foodType = foodType,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
