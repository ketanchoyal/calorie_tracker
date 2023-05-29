// ignore_for_file: unused_element

import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:calorie_tracker/core/services/openfood_api/openfood_api_service.dart';
import 'package:calorie_tracker/ui/extensions/light_dark_color/theme+extension.dart';
import 'package:calorie_tracker/ui/views/add_food/bloc/add_food_form_bloc.dart';
import 'package:calorie_tracker/ui/widgets/textfield.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

part 'add_food.form.dart';
part 'add_food.barcode_scanner.dart';

class AddFoodView extends StatelessWidget {
  const AddFoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddFoodFormBloc(
        firebaseService: context.read<FirebaseService>(),
      ),
      child: BlocListener<AddFoodFormBloc, FormBlocState<String, String>>(
        listener: (context, state) {
          if (state is FormBlocSuccess) {
            Navigator.pop(context);
          }
        },
        child: const _AddFoodBody(),
      ),
    );
  }
}

class _AddFoodBody extends StatelessWidget {
  const _AddFoodBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          // iconTheme: const IconThemeData(color: Colors.white),
          title: const Text('Add Food'),
          actions: [
            IconButton(
              icon: const Icon(FontAwesomeIcons.barcode),
              tooltip: 'Scan Product Barcode',
              padding: const EdgeInsets.symmetric(horizontal: 16),
              onPressed: () async {
                final String? value = await Navigator.push<String?>(
                  context,
                  CupertinoPageRoute<String?>(
                    builder: (context) => const AddFoodBarcodeScanner(),
                  ),
                );
                if (value != null) {
                  final food =
                      await RepositoryProvider.of<OpenFoodAPIService>(context)
                          .getFoodData(value);
                  food.fold(
                      (food) => context
                          .read<AddFoodFormBloc>()
                          .autoFillFoodData(food),
                      (error) => ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(error),
                              // backgroundColor: context.theme.errorColor,
                            ),
                          ));
                }
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 5,
          onPressed: () {
            context.read<AddFoodFormBloc>().submit();
          },
          child: const Icon(
            Icons.check,
          ),
        ),
        body: const _AddFoodForm(),
      ),
    );
  }
}
