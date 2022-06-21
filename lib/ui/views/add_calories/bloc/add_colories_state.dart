part of 'add_colories_bloc.dart';

@freezed
class AddColoriesState with _$AddColoriesState {
  const factory AddColoriesState.initial() = _InitialState;

  /// The user has selected a food to add.
  const factory AddColoriesState.selectFood({required Food food}) =
      SelectFoodState;

  /// The user has selected quick add food.
  const factory AddColoriesState.quickAddFood() = _QuickAddFoodState;

  // /// The user is done selecting a food and ready to add calories and stuff.
  // const factory AddColoriesState.addData({required Food food}) = _AddDataState;
  const factory AddColoriesState.adding() = _AddingState;
  const factory AddColoriesState.success() = _SuccessState;
}
