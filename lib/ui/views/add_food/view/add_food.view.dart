import 'package:calorie_tracker/ui/views/add_food/bloc/add_food_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class AddFoodView extends StatelessWidget {
  const AddFoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return const FormThemeProvider(
      theme: FormTheme(
        checkboxTheme: CheckboxFieldTheme(
          canTapItemTile: true,
        ),
        radioTheme: RadioFieldTheme(
          canTapItemTile: true,
        ),
      ),
      child: _AddFoodBody(),
    );
  }
}

class _AddFoodBody extends StatelessWidget {
  const _AddFoodBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Add Food'),
      ),
      body: BlocProvider(
        create: (context) => AddFoodFormBloc(),
        // child: AddFoodForm(),
      ),
    );
  }
}
