import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/ui/views/add_calories/bloc/add_colories_bloc.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

part 'add_calories.form.dart';

class AddCaloriesView extends StatelessWidget {
  const AddCaloriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddColoriesBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Calories'),
          actions: [
            IconButton(
              icon: const Icon(FontAwesomeIcons.plus),
              tooltip: 'Add New Food',
              padding: const EdgeInsets.symmetric(horizontal: 16),
              onPressed: () {},
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(FontAwesomeIcons.plus),
        ),
        body: const _AddCaloriesBody(),
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
            onPressed: () {
              DropDownState(
                DropDown(
                  submitButtonText: 'Done',
                  submitButtonColor: const Color.fromRGBO(70, 76, 222, 1),
                  searchHintText: 'Search Food',
                  bottomSheetTitle: 'Your Food',

                  // searchBackgroundColor: Colors.black12,
                  dataList: [
                    SelectedListItem(false, 'name 1', '1'),
                    SelectedListItem(false, 'name 2', '2'),
                    SelectedListItem(false, 'name 3', '3'),
                    SelectedListItem(false, 'name 4', '4'),
                  ],
                  selectedItems: (List<dynamic> selectedList) {},
                  selectedItem: (String selected) {},
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
                  FontAwesomeIcons.barcode,
                  size: 70,
                ),
                SizedBox(height: 10),
                Text('Quick Add Food'),
              ],
            ),
            onPressed: () {
              context.read<AddColoriesBloc>().add(
                    AddColoriesEvent.quickAddFood(
                      food: Food(
                        name: 'Quick Add Food',
                        servingSize: 1,
                        nutrition: Nutrition(
                          calories: 100,
                          fat: 1,
                          carbs: 1,
                          protein: 1,
                        ),
                      ),
                    ),
                  );
            },
          ),
        ],
      ),
    );
  }
}
