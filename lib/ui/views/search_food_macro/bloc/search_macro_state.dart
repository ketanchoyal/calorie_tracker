import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_macro_state.freezed.dart';

@freezed
class SearchMacroState with _$SearchMacroState {
  const factory SearchMacroState.initial() = InitialSearchMacroState;

  const factory SearchMacroState.loading() = LoadingSearchMacroState;

  const factory SearchMacroState.loaded(List<Food> foods) =
      LoadedSearchMacroState;

  const factory SearchMacroState.error() = ErrorSearchMacroState;
}
