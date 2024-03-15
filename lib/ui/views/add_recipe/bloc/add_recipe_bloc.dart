import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_recipe_event.dart';
part 'add_recipe_state.dart';
part 'add_recipe_bloc.freezed.dart';

class AddRecipeBloc extends Bloc<AddRecipeEvent, AddRecipeState> {
  AddRecipeBloc({
    required FirebaseService firebaseService,
  })  : _firebaseService = firebaseService,
        super(InitialAddRecipeState()) {
    on<_AddRecipeEvent>(_mapAddRecipeEvent);
    on<_AddIngredientEvent>(_mapAddIngredientEvent);
    on<_RemoveIngredientEvent>(_mapRemoveIngredientEvent);
    on<_UpdateIngredientEvent>(_mapUpdateIngredientEvent);
    on<_UpdateTotalNutritionEvent>(_mapUpdateTotalNutritionEvent);
    on<_UpdateRecipeNameEvent>(_mapUpdateRecipeNameEvent);
    on<_UpdateRecipeNoteEvent>(_mapUpdateRecipeNoteEvent);
  }

  final FirebaseService _firebaseService;

  void _updateNutrient() {
    if (state is CreateAddRecipeState) {
      double carbs = 0;
      double protein = 0;
      double fat = 0;
      double calories = 0;

      (state as CreateAddRecipeState).recipe.incredients?.forEach((element) {
        carbs += (element.nutrition.carbs ?? 0) * (element.quantity ?? 1);
        protein += (element.nutrition.protein ?? 0) * (element.quantity ?? 1);
        fat += (element.nutrition.fat ?? 0) * (element.quantity ?? 1);
        calories += (element.nutrition.calories) * (element.quantity ?? 1);
      });

      add(AddRecipeEvent.updateTotalNutrition(carbs, protein, fat, calories));
    }
  }

  FutureOr<void> _mapAddRecipeEvent(
      _AddRecipeEvent event, Emitter<AddRecipeState> emit) {
    if (state is CreateAddRecipeState) {
      final currentState = state as CreateAddRecipeState;
      emit(AddRecipeState.adding());
      _firebaseService.addFood(currentState.recipe);
      emit(AddRecipeState.success());
    }
  }

  FutureOr<void> _mapAddIngredientEvent(
      _AddIngredientEvent event, Emitter<AddRecipeState> emit) {
    // final newState = state.when(initial: () {}, createRecipe: (food){}, adding: adding, success: success)
    if (state is InitialAddRecipeState) {
      emit(AddRecipeState.createRecipe(Food.emptyRecipe().copyWith(
        incredients: [event.food.copyWith(quantity: event.quantity)],
      )));
    } else if (state is CreateAddRecipeState) {
      final currentState = state as CreateAddRecipeState;
      emit(AddRecipeState.createRecipe(currentState.recipe.copyWith(
        incredients: [
          ...currentState.recipe.incredients ?? [],
          event.food.copyWith(quantity: event.quantity)
        ],
      )));
    }
    _updateNutrient();
  }

  FutureOr<void> _mapUpdateIngredientEvent(
      _UpdateIngredientEvent event, Emitter<AddRecipeState> emit) {
    if (state is CreateAddRecipeState) {
      final currentState = state as CreateAddRecipeState;
      emit(AddRecipeState.createRecipe(currentState.recipe.copyWith(
        incredients: [
          ...currentState.recipe.incredients!
              .where((element) => element.id != event.food.id),
          event.food.copyWith(quantity: event.quantity)
        ],
      )));
      _updateNutrient();
    }
  }

  FutureOr<void> _mapRemoveIngredientEvent(
      _RemoveIngredientEvent event, Emitter<AddRecipeState> emit) {
    if (state is CreateAddRecipeState) {
      final currentState = state as CreateAddRecipeState;
      emit(AddRecipeState.createRecipe(currentState.recipe.copyWith(
        incredients: [
          ...currentState.recipe.incredients!
              .where((element) => element.id != event.food.id),
        ],
      )));
      _updateNutrient();
    }
  }

  FutureOr<void> _mapUpdateTotalNutritionEvent(
      _UpdateTotalNutritionEvent event, Emitter<AddRecipeState> emit) {
    final currentState = state as CreateAddRecipeState;
    emit(AddRecipeState.createRecipe(currentState.recipe.copyWith(
      nutrition: Nutrition(
        carbs: event.carbs,
        protein: event.protein,
        fat: event.fat,
        calories: event.calories,
      ),
    )));
  }

  FutureOr<void> _mapUpdateRecipeNameEvent(
      _UpdateRecipeNameEvent event, Emitter<AddRecipeState> emit) {
    if (state is InitialAddRecipeState) {
      emit(AddRecipeState.createRecipe(Food.emptyRecipe().copyWith(
        name: event.name,
      )));
    } else if (state is CreateAddRecipeState) {
      final currentState = state as CreateAddRecipeState;
      emit(AddRecipeState.createRecipe(currentState.recipe.copyWith(
        name: event.name,
      )));
    }
  }

  FutureOr<void> _mapUpdateRecipeNoteEvent(
      _UpdateRecipeNoteEvent event, Emitter<AddRecipeState> emit) {
    if (state is InitialAddRecipeState) {
      emit(AddRecipeState.createRecipe(Food.emptyRecipe().copyWith(
        notes: event.note,
      )));
    } else if (state is CreateAddRecipeState) {
      final currentState = state as CreateAddRecipeState;
      emit(AddRecipeState.createRecipe(currentState.recipe.copyWith(
        notes: event.note,
      )));
    }
  }
}
