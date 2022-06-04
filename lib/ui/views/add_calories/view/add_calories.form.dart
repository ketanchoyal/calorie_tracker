part of 'add_calories.view.dart';

class _AddCaloriesForm extends StatelessWidget {
  const _AddCaloriesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _FoodDetails(),
          SizedBox(height: 16),
          _FoodServings(),
        ],
      ),
    );
  }
}

class _FoodDetails extends StatelessWidget {
  const _FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Bread',
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            //Calories
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '400',
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
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // fat, carbs, protein
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
                    '2g',
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
                    '2g',
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
                    '2g',
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
