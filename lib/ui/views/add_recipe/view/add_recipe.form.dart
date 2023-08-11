part of 'add_recipe.page.dart';

class AddRecipeForm extends StatelessWidget {
  const AddRecipeForm({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.select((AddRecipeBloc bloc) => bloc.state);
    final incredients = state.maybeWhen(
      createRecipe: (recipe) => recipe.incredients ?? <Food>[],
      orElse: () => <Food>[],
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          MainRecipeNutrient(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: incredients.length + 1,
            itemBuilder: (context, index) {
              final isLast = index == incredients.length;
              if (isLast) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: ListTile(
                    onTap: () async {
                      final selectedFood = await WoltModalSheet.show<Food?>(
                        context: context,
                        useSafeArea: true,
                        modalTypeBuilder: (context) {
                          return WoltModalType.bottomSheet;
                        },
                        pageListBuilder: (context) {
                          return [
                            SheetPageWithTextField.build(context, incredients)
                          ];
                        },
                        enableDragForBottomSheet: true,
                      );
                      if (selectedFood != null) {
                        context
                            .read<AddRecipeBloc>()
                            .add(AddRecipeEvent.addIngredient(selectedFood, 1));
                      }
                    },
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),

                    style: ListTileStyle.list,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    trailing: const Icon(Icons.add),
                    title: const Text('Add Ingredient'),
                    // trailing: const Icon(Icons.delete),
                  ),
                );
              }

              return IngredientWidget(
                incredient: incredients[index],
              );
            },
          ),
          Divider(),
          Center(
              child: Text(
            "Food Notes",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          )),
          SizedBox(
            height: 100,
            child: Column(
              children: [
                Flexible(
                  child: AutoSizeTextField(
                    controller: TextEditingController(
                        text: state.maybeWhen(
                            orElse: () => '',
                            createRecipe: (recipe) => recipe.notes)),
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    maxLines: null,
                    expands: true,
                    onSubmitted: (value) {
                      context
                          .read<AddRecipeBloc>()
                          .add(AddRecipeEvent.updateNote(value));
                    },
                    enableSuggestions: true,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: 'Food Notes Here',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IngredientWidget extends StatefulWidget {
  final Food incredient;
  const IngredientWidget({
    super.key,
    required this.incredient,
  });
  @override
  State<IngredientWidget> createState() => _IngredientWidgetState();
}

class _IngredientWidgetState extends State<IngredientWidget> {
  Food get incredient => widget.incredient;
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        borderRadius: BorderRadius.circular(10),
        child: AnimatedContainer(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          duration: const Duration(milliseconds: 300),
          // height: isExpanded ? 50 : 60,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    incredient.name,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Row(
                    children: [
                      Text(
                        '${incredient.nutrition.calories.toStringAsFixed(2)} Cal',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey,
                                ),
                      ),
                      if (!isExpanded)
                        Text(
                          ' x ${incredient.quantity}',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                        ),
                    ],
                  ),
                ],
              ),
              AnimatedCrossFade(
                firstChild: SizedBox(),
                secondChild: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (incredient.nutrition.protein != null)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Protein : ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0,
                                        ),
                                  ),
                                  Text(
                                    '${incredient.nutrition.protein?.toStringAsFixed(2)}g',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            if (incredient.nutrition.carbs != null)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Carbs : ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0,
                                        ),
                                  ),
                                  Text(
                                    '${incredient.nutrition.carbs?.toStringAsFixed(2)}g',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            if (incredient.nutrition.fat != null)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fat : ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0,
                                        ),
                                  ),
                                  Text(
                                    '${incredient.nutrition.fat?.toStringAsFixed(2)}g',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Quantity",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0,
                                ),
                          ),
                          // This will be replaced by textfield
                          // Text(
                          //   "1",
                          //   style: Theme.of(context)
                          //       .textTheme
                          //       .titleLarge
                          //       ?.copyWith(
                          //         fontWeight: FontWeight.bold,
                          //         letterSpacing: 0,
                          //       ),
                          // ),
                          SizedBox(
                            width: 50,
                            height: 40,
                            child: TextField(
                              inputFormatters: [
                                // Reg Expression allows only numbers with 1 decimal point
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'^\d+\.?\d{0,1}')),
                              ],
                              controller: TextEditingController(
                                  text: incredient.quantity.toString()),
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                double? valueDouble = double.tryParse(value);
                                if (valueDouble == null) {
                                  return;
                                }
                                context.read<AddRecipeBloc>().add(
                                    AddRecipeEvent.updateIngredient(
                                        incredient, valueDouble));
                              },
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0,
                                  ),
                              maxLines: 1,
                              maxLength: 3,
                              keyboardType: TextInputType.numberWithOptions(
                                  signed: true, decimal: true),
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                isDense: true,
                                counter: SizedBox.shrink(),
                                hintText: '1',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0,
                                      color: Colors.grey,
                                    ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                crossFadeState: isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainRecipeNutrient extends StatelessWidget {
  const MainRecipeNutrient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddRecipeBloc, AddRecipeState>(
      buildWhen: (previous, current) {
        return current is! AddingRecipeState ||
            current is! SuccessAddRecipeState;
      },
      builder: (context, state) {
        if (state is InitialAddRecipeState) {
          return recipeLabel(context, '', '', '', '', '', true);
        } else if (state is CreateAddRecipeState) {
          return recipeLabel(
            context,
            state.recipe.name,
            state.recipe.nutrition.calories.toStringAsFixed(2),
            state.recipe.nutrition.protein?.toStringAsFixed(2) ?? '',
            state.recipe.nutrition.carbs?.toStringAsFixed(2) ?? '',
            state.recipe.nutrition.fat?.toStringAsFixed(2) ?? '',
            false,
          );
        } else {
          return recipeLabel(context, '', '', '', '', '', true);
        }
      },
    );
  }

  Widget recipeLabel(
    BuildContext context,
    String name,
    String calories,
    String protein,
    String carbs,
    String fat,
    bool isPlaceHolder,
  ) {
    final controller = TextEditingController(text: name);
    controller.selection =
        TextSelection.collapsed(offset: controller.text.length);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              // width: MediaQuery.of(context).size.width * 0.5,
              // height: 40,
              child: AutoSizeTextField(
                controller: controller,
                onSubmitted: (value) {
                  context
                      .read<AddRecipeBloc>()
                      .add(AddRecipeEvent.updateName(value));
                },
                // onChanged: (value) {
                //   context
                //       .read<AddRecipeBloc>()
                //       .add(AddRecipeEvent.updateName(value));
                // },
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                wrapWords: true,
                maxLines: 1,
                enableSuggestions: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Recipe Name',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
              // child: Text(
              //   isPlaceHolder ? 'Name' : name,
              //   maxLines: 2,
              //   // overflow: TextOverflow.ellipsis,
              //   semanticsLabel: 'Some very tasty food name',
              //   style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              //         fontWeight: FontWeight.bold,
              //       ),
              // ),
            ),
            //Calories
            Flexible(
              flex: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isPlaceHolder ? '???' : calories,
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
          'Total Nutrients',
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
                    '${isPlaceHolder ? "??" : fat}g',
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
                    '${isPlaceHolder ? "??" : carbs}g',
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
                    '${isPlaceHolder ? "??" : protein}g',
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
