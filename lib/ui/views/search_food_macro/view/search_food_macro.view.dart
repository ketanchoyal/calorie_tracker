import 'package:calorie_tracker/core/enums/serving_type.enum.dart';
import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/ui/views/search_food_macro/bloc/search_food_macro.cubit.dart';
import 'package:calorie_tracker/ui/views/search_food_macro/bloc/search_macro_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class ModalSheetForSearchNutrition {
  ModalSheetForSearchNutrition._();

  static WoltModalSheetPage build(
    BuildContext context,
  ) {
    ValueNotifier<bool> isButtonEnabledNotifier = ValueNotifier(false);
    ValueNotifier<ServingType> servingType =
        ValueNotifier(ServingType.hundreedGrams);
    ValueNotifier<List<Food>> selectedFoods = ValueNotifier([]);
    final textEditingController = TextEditingController();
    final scrollController = ScrollController();
    return WoltModalSheetPage.withSingleChild(
      mainContentPadding: const EdgeInsetsDirectional.only(
          top: 0, bottom: 10, start: 16, end: 16),
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
              onPressed: isEnabled
                  ? () {
                      context.read<SearchMacroCubit>().addSelectedFoodToMyList(
                            selectedFoods.value,
                          );
                      Navigator.of(context).pop();
                    }
                  : null,
              child: Text(
                isEnabled
                    ? "Add Selected Food to My List"
                    : "Select Food to Add",
              ),
            ),
          );
        },
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      pageTitlePaddingTop: 0,
      isTopBarVisibleWhenScrolled: false,
      scrollController: scrollController,
      // topBarTitle: Text(
      //   'Search for food macro nutrients',
      //   style: Theme.of(context).textTheme.titleLarge?.copyWith(
      //         fontWeight: FontWeight.bold,
      //       ),
      // ),
      pageTitle: Column(
        children: [
          Text(
            'Search for food macro nutrients',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: textEditingController,
            cursorColor: Colors.black,
            onFieldSubmitted: (text) {
              if (text.isNotEmpty) {
                context.read<SearchMacroCubit>().search(
                      textEditingController.text,
                      servingType.value,
                    );
              }
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
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 5, left: 4),
                child: ValueListenableBuilder(
                    valueListenable: servingType,
                    builder: (context, value, child) {
                      return DropdownButton<ServingType>(
                        style: Theme.of(context).textTheme.bodyMedium,
                        value: value,
                        underline: Container(),
                        selectedItemBuilder: (context) {
                          return ServingType.values
                              .map(
                                (e) => Center(
                                  child: Text(
                                    e.displayValue,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.w900,
                                        ),
                                  ),
                                ),
                              )
                              .toList();
                        },
                        items: ServingType.values
                            .map(
                              (e) => DropdownMenuItem<ServingType>(
                                child: Text(e.displayValue),
                                value: e,
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          if (value != null) {
                            servingType.value = value;
                          }
                        },
                      );
                    }),
              ),
            ),
          ),
        ],
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
      child: BlocBuilder<SearchMacroCubit, SearchMacroState>(
          builder: (BuildContext context, value) {
        return AnimatedCrossFade(
          firstChild: value.maybeWhen(
            initial: () {
              return Center(
                child: const SizedBox(
                  height: 450,
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.searchengin,
                      size: 100,
                      color: Colors.grey,
                    ),
                  ),
                ),
              );
            },
            loading: () {
              return Center(
                child: const SizedBox(
                  height: 450,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            },
            error: () {
              return const Center(
                child: Text('Error'),
              );
            },
            orElse: () => SizedBox(),
          ),
          secondChild: value.maybeWhen(
              orElse: () => SizedBox(),
              loaded: (foods) {
                return SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 80, top: 10),
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: foods
                          .map(
                            (e) => ValueListenableBuilder(
                                valueListenable: selectedFoods,
                                builder: (context, foods, child) {
                                  return _SingleFoodLogItem(
                                      food: e,
                                      onTap: () {
                                        if (foods.contains(e)) {
                                          foods.remove(e);
                                        } else {
                                          foods.add(e);
                                        }
                                        selectedFoods.value = foods;
                                        isButtonEnabledNotifier.value =
                                            foods.isNotEmpty;
                                      },
                                      isSelected:
                                          selectedFoods.value.contains(e));
                                }),
                          )
                          .toList(),
                    ),
                  ),
                );
              }),
          crossFadeState: value.maybeWhen(
            orElse: () => CrossFadeState.showFirst,
            loaded: (_) => CrossFadeState.showSecond,
          ),
          duration: const Duration(milliseconds: 300),
        );
      }),
    );
  }
}

class _SingleFoodLogItem extends HookWidget {
  const _SingleFoodLogItem({
    required this.food,
    required this.onTap,
    this.isSelected = false,
  });
  final Food food;
  final Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState<bool>(false);
    print(isSelected);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: isExpanded.value ? 130 : null,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected
              ? Theme.of(context).primaryColor
              : Theme.of(context).dividerColor,
          width: isSelected ? 2 : 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          radius: 10,
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
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
