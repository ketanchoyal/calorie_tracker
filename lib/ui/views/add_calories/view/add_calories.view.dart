// ignore_for_file: use_build_context_synchronously

import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:calorie_tracker/ui/extensions/light_dark_color/theme.extension.dart';
import 'package:calorie_tracker/ui/views/add_calories/bloc/add_colories_bloc.dart';
import 'package:calorie_tracker/ui/views/add_food/add_food.dart';
import 'package:calorie_tracker/ui/widgets/foodTypeSelector.widget.dart';
import 'package:calorie_tracker/ui/widgets/textfield.widget.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

part 'add_calories.form.dart';
part 'quick_add_calories.form.dart';

class AddCaloriesView extends StatelessWidget {
  const AddCaloriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddColoriesBloc>(
          create: (context) => AddColoriesBloc(
            firebaseService: context.read<FirebaseService>(),
          ),
        ),
        BlocProvider<QuickAddCaloriesFormBloc>(
          create: (context) => QuickAddCaloriesFormBloc(),
        ),
        BlocProvider<AddCaloriesFormBloc>(
          create: (context) => AddCaloriesFormBloc(),
        ),
      ],
      child: BlocConsumer<AddColoriesBloc, AddColoriesState>(
        buildWhen: (previous, current) {
          if (current is InitialState ||
              current is QuickAddFoodState ||
              current is SelectFoodState) {
            return true;
          }

          return false;
        },
        listener: (context, state) {
          state.whenOrNull(
            adding: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Adding...'),
                  duration: Duration(milliseconds: 500),
                ),
              );
            },
            success: () {
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Added'),
                ),
              );

              Navigator.pop(context);
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                state.maybeWhen(
                  orElse: () {
                    assert(false, 'If you see this, something is wrong.');
                    return '';
                  },
                  initial: () {
                    return 'Select';
                  },
                  quickAddFood: () => 'Quick Add Food',
                  selectFood: (_) => 'Select Food',
                ),
              ),
              actions: state.maybeWhen(
                orElse: () => [
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.rotateLeft),
                    tooltip: 'Reset',
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    onPressed: () {
                      context
                          .read<AddColoriesBloc>()
                          .add(AddColoriesEvent.reset());
                    },
                  ),
                ],
                initial: () => [
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.plus),
                    tooltip: 'Add New Food',
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute<void>(
                          builder: (context) => const AddFoodView(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            floatingActionButton: state.maybeWhen(
              initial: () {
                return null;
              },
              orElse: () => FloatingActionButton(
                onPressed: () {
                  state.whenOrNull(
                    quickAddFood: () {
                      final bloc = context.read<QuickAddCaloriesFormBloc>();
                      context.read<AddColoriesBloc>().add(
                            AddColoriesEvent.submit(
                              servings: 1,
                              foodType: bloc.foodType,
                              caloriesPerServing: bloc.calories.valueToDouble!,
                              protein: bloc.protein.valueToDouble,
                              fat: bloc.fat.valueToDouble,
                              name: bloc.title.value,
                              carbs: bloc.carbs.valueToDouble,
                            ),
                          );
                    },
                    selectFood: (food) {
                      final bloc = context.read<AddCaloriesFormBloc>();
                      context.read<AddColoriesBloc>().add(
                            AddColoriesEvent.submit(
                              foodType: bloc.foodType,
                              servings: bloc.servingToAdd.valueToDouble!,
                              caloriesPerServing:
                                  bloc.caloriesPerServing.valueToDouble!,
                              protein: bloc.protein.valueToDouble,
                              fat: bloc.fat.valueToDouble,
                              carbs: bloc.carbs.valueToDouble,
                              food: food,
                            ),
                          );
                    },
                  );
                },
                child: const Icon(FontAwesomeIcons.plus),
              ),
            ),
            body: const _AddCaloriesBody(),
          );
        },
      ),
    );
  }
}

class _AddCaloriesBody extends StatelessWidget {
  const _AddCaloriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddColoriesBloc, AddColoriesState>(
      builder: (context, state) {
        // state.
        return state.maybeWhen(
          orElse: () {
            return const SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: Text('Adding Something'),
              ),
            );
          },
          quickAddFood: () => const _QuickAddCaloriesForm(),
          selectFood: (food) {
            context.read<AddCaloriesFormBloc>().autoFillWith(food);
            return const _AddCaloriesForm();
          },
          initial: () {
            return const _EmptyStateBody();
          },
        );
      },
    );
  }
}

class _EmptyStateBody extends StatelessWidget {
  const _EmptyStateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Two buttons
          // 1. Select Food
          // 2. Quick Add Food
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: const Size.square(180),
              // padding: const EdgeInsets.all(16),
              backgroundColor: Colors.white10,
            ),
            child: Column(
              children: const [
                Icon(
                  Icons.add_circle_outline_rounded,
                  size: 80,
                ),
                SizedBox(height: 10),
                Text('Select Food'),
              ],
            ),
            onPressed: () async {
              // final list = await context.read<FirebaseService>().getFoodsList();
              final list = context.read<FirebaseService>().getFoods().map(
                    (e) => e
                        .map(
                          (e) => SelectedListItem(
                            false,
                            e.name,
                            e.id ?? '',
                            value: e,
                          ),
                        )
                        .toList(),
                  );
              DropDownState<Food>(
                DropDown(
                  submitButtonText: 'Done',
                  submitButtonColor: const Color.fromRGBO(70, 76, 222, 1),
                  searchHintText: 'Search Food',
                  bottomSheetTitle: 'Your Food',

                  // searchBackgroundColor: Colors.black12,
                  stream: list,
                  listItemBuildListener: (context, index) {},
                  selectedItemValue: (Food selectedFood) {
                    context.read<AddColoriesBloc>().add(
                          AddColoriesEvent.selectFood(
                            food: selectedFood,
                          ),
                        );
                  },
                  enableMultipleSelection: false,
                  searchController: TextEditingController(),
                ),
              ).showModal(context);
            },
          ),
          const SizedBox(height: 16),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: const Size.square(180),
              // padding: const EdgeInsets.all(16),
              backgroundColor: Colors.white10,
            ),
            child: Column(
              children: const [
                Icon(
                  FontAwesomeIcons.boltLightning,
                  size: 70,
                ),
                SizedBox(height: 10),
                Text('Quick Add Food'),
              ],
            ),
            onPressed: () {
              context.read<AddColoriesBloc>().add(
                    AddColoriesEvent.quickAddFood(),
                  );
            },
          ),
        ],
      ),
    );
  }
}
