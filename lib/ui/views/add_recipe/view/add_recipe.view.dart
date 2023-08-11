part of 'add_recipe.page.dart';

class _AddRecipeView extends StatelessWidget {
  const _AddRecipeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe'),
      ),
      body: const AddRecipeForm(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     final selectedFood = await WoltModalSheet.show<Food?>(
      //       context: context,
      //       useSafeArea: true,
      //       modalTypeBuilder: (context) {
      //         return WoltModalType.bottomSheet;
      //       },
      //       pageListBuilder: (context) {
      //         return [SheetPageWithTextField.build(context)];
      //       },
      //       enableDragForBottomSheet: true,
      //     );
      //     print(selectedFood);
      //   },
      //   child: const Icon(FontAwesomeIcons.bowlFood),
      // ),
      bottomNavigationBar: BlocBuilder<AddRecipeBloc, AddRecipeState>(
        builder: (context, state) {
          final canAddRecipe = state.maybeMap(
            createRecipe: (recipe) {
              return recipe.recipe.incredients != null &&
                  recipe.recipe.incredients!.isNotEmpty &&
                  recipe.recipe.name.isNotEmpty;
            },
            orElse: () => false,
          );

          return MaterialButton(
            color: Theme.of(context).primaryColorDark,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            disabledColor: Theme.of(context).primaryColorDark.withOpacity(0.8),
            disabledTextColor: Colors.grey,
            onPressed: canAddRecipe
                ? () {
                    context
                        .read<AddRecipeBloc>()
                        .add(const AddRecipeEvent.addRecipe());
                  }
                : null,
            height: 50 + MediaQuery.of(context).padding.bottom,
            child: Text(
              'Add Recipe'.toUpperCase(),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          );
        },
      ),
    );
  }
}

class SheetPageWithTextField {
  SheetPageWithTextField._();

  static WoltModalSheetPage build(BuildContext context,
      [List<Food> selectedIngredients = const []]) {
    ValueNotifier<bool> isButtonEnabledNotifier = ValueNotifier(false);
    final textEditingController = TextEditingController();
    final scrollController = ScrollController();
    return WoltModalSheetPage.withSingleChild(
      mainContentPadding: const EdgeInsetsDirectional.all(16),
      stickyActionBar: ValueListenableBuilder<bool>(
        valueListenable: isButtonEnabledNotifier,
        builder: (_, isEnabled, __) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromHeight(60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              onPressed: () {},
              child: Text("Add"),
            ),
          );
        },
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      pageTitlePaddingTop: 10,
      isTopBarVisibleWhenScrolled: true,
      scrollController: scrollController,
      // topBarTitle: Text(
      //   'Add Food',
      //   style: Theme.of(context).textTheme.titleLarge?.copyWith(
      //         fontWeight: FontWeight.bold,
      //       ),
      // ),
      topBarTitle: Text(
        'Select a Food from this list',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      pageTitle: TextFormField(
        controller: textEditingController,
        cursorColor: Colors.black,
        onChanged: (value) {
          // widget.onTextChanged(value);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black12,
          contentPadding:
              const EdgeInsets.only(left: 0, bottom: 0, top: 0, right: 15),
          hintText: 'Search',
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          prefixIcon: const IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.cancel,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      closeButton: Padding(
        padding: const EdgeInsets.all(5.0),
        child: RawMaterialButton(
          elevation: 0,

          focusElevation: 0,
          highlightElevation: 0,
          hoverElevation: 0,
          // fillColor: fillColor,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          // highlightColor: iconColor.withOpacity(.1),
          // splashColor: iconColor.withOpacity(.1),
          constraints: const BoxConstraints.expand(width: 40, height: 40),
          onPressed: () => Navigator.of(context).pop(),
          shape: const CircleBorder(),
          child: Icon(
            FontAwesomeIcons.solidCircleXmark,
            size: 24.0,
            color: Colors.grey,
          ),
        ),
      ),
      child: ValueListenableBuilder<TextEditingValue>(
          valueListenable: textEditingController,
          builder: (BuildContext context, value, Widget? child) {
            return StreamBuilder<List<Food>>(
                stream: context.read<FirebaseService>().getFoods(),
                initialData: [],
                builder: (context, snapshot) {
                  final foodWithoutSelectedIngredients =
                      snapshot.data!.where((element) {
                    return !selectedIngredients
                        .map((e) => e.id)
                        .contains(element.id);
                  }).toList();
                  final foodsToShow = foodWithoutSelectedIngredients
                      .where((element) => element.searchableStrings
                          .join(' ')
                          .toLowerCase()
                          .contains(value.text.toLowerCase()))
                      .toList();
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 80, top: 10),
                    child: ListView(
                      // controller: scrollController,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: foodsToShow
                          .map(
                            (e) => _SingleFoodLogItem(
                              food: e,
                            ),
                          )
                          .toList(),
                    ),
                  );
                });
          }),
    );
  }
}

class _SingleFoodLogItem extends HookWidget {
  const _SingleFoodLogItem({
    required this.food,
  });
  final Food food;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState<bool>(false);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: isExpanded.value ? 130 : null,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).dividerColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          radius: 10,
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            Navigator.of(context).pop(food);
          },
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: AnimatedPadding(
                      duration: const Duration(milliseconds: 300),
                      padding: EdgeInsets.only(
                        top: 12,
                        left: 12,
                        bottom: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(
                      children: [
                        Text(
                          '${food.nutrition.calories} Cal',
                          // textAlign: TextAlign.right,
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          radius: 50,
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {
                            isExpanded.value = !isExpanded.value;
                          },
                          child: Icon(
                            isExpanded.value
                                ? FontAwesomeIcons.circleChevronUp
                                : FontAwesomeIcons.circleChevronDown,
                            size: 20,
                            color: Theme.of(context)
                                .primaryColorDark
                                .withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              AnimatedCrossFade(
                duration: const Duration(milliseconds: 50),
                crossFadeState: (isExpanded.value)
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                firstChild: Container(),
                secondChild: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Protein : '.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                '${food.nutrition.protein} g',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                'Carbs : '.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                '${food.nutrition.carbs} g',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                'Fat : '.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                '${food.nutrition.fat} g',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
