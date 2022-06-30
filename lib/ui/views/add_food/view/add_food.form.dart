part of 'add_food.view.dart';

class _AddFoodForm extends StatelessWidget {
  const _AddFoodForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formBloc = BlocProvider.of<AddFoodFormBloc>(context);

    return ScrollableFormBlocManager(
      formBloc: formBloc,
      child: ListView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.all(24),
        children: [
          FormTextField(
            fieldBloc: formBloc.name,
            label: 'Name',
            prefixIcon: FontAwesomeIcons.signature,
          ),
          FormTextField(
            fieldBloc: formBloc.description,
            label: 'Description',
            isOptional: true,
            prefixIcon: Icons.description_rounded,
          ),
          FormTextField(
            fieldBloc: formBloc.caloriesPerServing,
            label: 'Calories per Serving',
            prefixIcon: FontAwesomeIcons.bowlRice,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          FormTextField(
            fieldBloc: formBloc.fat,
            label: 'Fat',
            isOptional: true,
            prefixIcon: FontAwesomeIcons.burger,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          FormTextField(
            fieldBloc: formBloc.carbs,
            label: 'Carbs',
            isOptional: true,
            prefixIcon: Icons.fastfood_rounded,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          FormTextField(
            fieldBloc: formBloc.protein,
            label: 'Protein',
            isOptional: true,
            prefixIcon: FontAwesomeIcons.nutritionix,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          //Notes like what does per serving means?
          FormTextField(
            fieldBloc: formBloc.notes,
            label: 'Notes',
            hint: 'Notes like what does per serving means?',
            isOptional: true,
            prefixIcon: Icons.description_rounded,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: context.color.when(
                      light: () => Colors.black12,
                      dark: () => Colors.white10,
                    ),
                    minimumSize: const Size(double.infinity, 55),
                  ),
                  onPressed: () {
                    if (formBloc.isAdvanced) {
                      formBloc.basic();
                    } else {
                      formBloc.advanced();
                    }
                  },
                  child: !context.watch<AddFoodFormBloc>().isAdvanced
                      ? const Text('Advanced')
                      : const Text('Basic'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
