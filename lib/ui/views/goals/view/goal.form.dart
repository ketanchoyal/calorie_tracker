part of 'goal.view.dart';

class _GoalForm extends StatelessWidget {
  const _GoalForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formBloc = BlocProvider.of<GoalFormBloc>(context);

    return ScrollableFormBlocManager(
      formBloc: formBloc,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.all(24),
          children: [
            // FormTextField(
            //   fieldBloc: formBloc.name,
            //   label: 'Name',
            //   prefixIcon: FontAwesomeIcons.signature,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldBlocBuilder(
                      textFieldBloc: formBloc.calories,
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.next,
                      textAlignVertical: TextAlignVertical.center,
                      textStyle: Theme.of(context).textTheme.headline3,
                      decoration: InputDecoration(
                        labelText: 'Calories',
                        alignLabelWithHint: true,
                        floatingLabelStyle:
                            Theme.of(context).textTheme.headline5,
                        constraints: const BoxConstraints(
                          maxWidth: 250,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    TextFieldBlocBuilder(
                      textFieldBloc: formBloc.protein,
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.next,
                      textStyle: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Protien',
                        floatingLabelStyle:
                            Theme.of(context).textTheme.headline5,
                        constraints: const BoxConstraints(
                          maxWidth: 250,
                        ),
                        alignLabelWithHint: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    TextFieldBlocBuilder(
                      textFieldBloc: formBloc.carbs,
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.next,
                      textStyle: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Carbs',
                        floatingLabelStyle:
                            Theme.of(context).textTheme.headline5,
                        constraints: const BoxConstraints(
                          maxWidth: 250,
                        ),
                        alignLabelWithHint: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    TextFieldBlocBuilder(
                      textFieldBloc: formBloc.fat,
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.next,
                      textStyle: Theme.of(context).textTheme.headline4,
                      decoration: InputDecoration(
                        labelText: 'Fat',
                        floatingLabelStyle:
                            Theme.of(context).textTheme.headline5,
                        constraints: const BoxConstraints(
                          maxWidth: 250,
                        ),
                        alignLabelWithHint: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
