part of 'add_recipe_bloc.dart';

@freezed
class AddRecipeEvent with _$AddRecipeEvent {
  const factory AddRecipeEvent.addRecipe() = _AddRecipeEvent;
  const factory AddRecipeEvent.addIngredient(Food food, double quantity) =
      _AddIngredientEvent;
  const factory AddRecipeEvent.removeIngredient(Food food) =
      _RemoveIngredientEvent;
  const factory AddRecipeEvent.updateIngredient(Food food, double quantity) =
      _UpdateIngredientEvent;

  const factory AddRecipeEvent.updateName(String name) = _UpdateRecipeNameEvent;
  const factory AddRecipeEvent.updateNote(String note) = _UpdateRecipeNoteEvent;

  const factory AddRecipeEvent.updateTotalNutrition(
          double carbs, double protein, double fat, double calories) =
      _UpdateTotalNutritionEvent;
}
