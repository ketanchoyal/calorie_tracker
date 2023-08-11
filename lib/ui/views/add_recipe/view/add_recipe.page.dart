import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:calorie_tracker/ui/views/add_recipe/bloc/add_recipe_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

part 'add_recipe.view.dart';
part 'add_recipe.form.dart';

class AddRecipePage extends StatelessWidget {
  const AddRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          return AddRecipeBloc(
            firebaseService: context.read<FirebaseService>(),
          );
        },
        child: const _AddRecipeView());
  }
}
