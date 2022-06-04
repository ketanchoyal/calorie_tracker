// ignore_for_file: unused_element

import 'package:calorie_tracker/ui/extensions/light_dark_color/theme.extension.dart';
import 'package:calorie_tracker/ui/views/add_food/bloc/add_food_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddFoodView extends StatelessWidget {
  const AddFoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return FormThemeProvider(
      theme: const FormTheme(
        checkboxTheme: CheckboxFieldTheme(
          canTapItemTile: true,
        ),
        radioTheme: RadioFieldTheme(
          canTapItemTile: true,
        ),
      ),
      child: BlocProvider(
        create: (context) => AddFoodFormBloc(),
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
              onPressed: () {},
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

class _AddFoodForm extends StatelessWidget {
  const _AddFoodForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formBloc = BlocProvider.of<AddFoodFormBloc>(context);

    return FormBlocListener<AddFoodFormBloc, String, String>(
      onSubmitting: (context, state) {
        // LoadingDialog.show(context);
      },
      onSuccess: (context, state) {
        // LoadingDialog.hide(context);

        // Navigator.of(context).pushReplacement(
        //     MaterialPageRoute(builder: (_) => const SuccessScreen()));
      },
      onFailure: (context, state) {
        // LoadingDialog.hide(context);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.failureResponse!)));
      },
      child: ScrollableFormBlocManager(
        formBloc: formBloc,
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              _TextField(
                fieldBloc: formBloc.name,
                label: 'Name',
                prefixIcon: FontAwesomeIcons.signature,
              ),
              _TextField(
                fieldBloc: formBloc.description,
                label: 'Description',
                prefixIcon: Icons.description_rounded,
              ),
              _TextField(
                fieldBloc: formBloc.servingSize,
                label: 'Serving Size',
                prefixIcon: FontAwesomeIcons.bowlFood,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              _TextField(
                fieldBloc: formBloc.caloriesPerServing,
                label: 'Calories per Serving',
                prefixIcon: FontAwesomeIcons.bowlRice,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              _TextField(
                fieldBloc: formBloc.fat,
                label: 'Fat',
                prefixIcon: FontAwesomeIcons.burger,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              _TextField(
                fieldBloc: formBloc.carbs,
                label: 'Carbs',
                prefixIcon: Icons.fastfood_rounded,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              _TextField(
                fieldBloc: formBloc.protein,
                label: 'Protein',
                prefixIcon: FontAwesomeIcons.nutritionix,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: context.color.when(
                          light: () => Colors.black12,
                          dark: () => Colors.white10,
                        ),
                        minimumSize: const Size(double.infinity, 55),
                      ),
                      onPressed: () {
                        if (formBloc.isAdvanced) {
                          context.read<AddFoodFormBloc>().basic();
                        } else {
                          context.read<AddFoodFormBloc>().advanced();
                        }
                      },
                      child: context.watch<AddFoodFormBloc>().isAdvanced
                          ? const Text('Advanced')
                          : const Text('Basic'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField({
    super.key,
    required this.fieldBloc,
    required this.label,
    required this.prefixIcon,
    this.keyboardType,
  });

  final TextFieldBloc fieldBloc;
  final String label;
  final IconData prefixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFieldBlocBuilder(
      textFieldBloc: fieldBloc,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefixIcon),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
