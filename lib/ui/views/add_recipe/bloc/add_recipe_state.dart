part of 'add_recipe_bloc.dart';

@freezed
class AddRecipeState with _$AddRecipeState {
  const factory AddRecipeState.initial() = InitialAddRecipeState;
  const factory AddRecipeState.createRecipe(Food recipe) = CreateAddRecipeState;
  const factory AddRecipeState.adding() = AddingRecipeState;
  const factory AddRecipeState.success() = SuccessAddRecipeState;
}
