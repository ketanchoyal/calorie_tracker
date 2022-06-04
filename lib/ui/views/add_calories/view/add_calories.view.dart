import 'package:drop_down_list/drop_down_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddCaloriesView extends StatelessWidget {
  const AddCaloriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Calories'),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.barcode),
            tooltip: 'Quick Add',
            padding: const EdgeInsets.symmetric(horizontal: 16),
            onPressed: () {},
          ),
        ],
      ),
      body: const _AddCaloriesEmptyStateBody(),
    );
  }
}

class _AddCaloriesEmptyStateBody extends StatelessWidget {
  const _AddCaloriesEmptyStateBody({super.key});

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
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
