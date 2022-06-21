import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/ui/extensions/light_dark_color/theme.extension.dart';
import 'package:calorie_tracker/ui/views/add_calories/bloc/add_colories_bloc.dart';
import 'package:calorie_tracker/ui/views/add_food/add_food.dart';
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
          create: (context) => AddColoriesBloc(),
        ),
        BlocProvider<QuickAddCaloriesFormBloc>(
          create: (context) => QuickAddCaloriesFormBloc(),
        ),
      ],
      child: BlocConsumer<AddColoriesBloc, AddColoriesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                state.maybeWhen(
                  orElse: () {
                    return context.read<AddColoriesBloc>().prevState.whenOrNull(
                              quickAddFood: () => 'Quick Add Food',
                              selectFood: (_) => 'Select Food',
                            ) ??
                        '';
                  },
                  initial: () {
                    return 'Select';
                  },
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
              orElse: () {
                return context.read<AddColoriesBloc>().prevState.maybeWhen(
                      orElse: () => FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(FontAwesomeIcons.plus),
                      ),
                    );
              },
              initial: () {
                return null;
              },
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
            return context.read<AddColoriesBloc>().prevState.whenOrNull(
                      quickAddFood: () => const _QuickAddCaloriesForm(),
                      selectFood: (food) => BlocProvider<AddCaloriesFormBloc>(
                        create: (context) => AddCaloriesFormBloc(food),
                        child: const _AddCaloriesForm(),
                      ),
                    ) ??
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.yellowAccent,
                );
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
              DropDownState<Food>(
                DropDown(
                  submitButtonText: 'Done',
                  submitButtonColor: const Color.fromRGBO(70, 76, 222, 1),
                  searchHintText: 'Search Food',
                  bottomSheetTitle: 'Your Food',

                  // searchBackgroundColor: Colors.black12,
                  dataList: foods
                      .map(
                        (e) => SelectedListItem(
                          false,
                          e.name,
                          e.id ?? '',
                          value: e,
                        ),
                      )
                      .toList(),
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
