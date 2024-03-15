import 'package:calorie_tracker/core/enums/serving_type.enum.dart';
import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:calorie_tracker/core/services/open_ai/open_ai_service.dart';
import 'package:calorie_tracker/ui/views/search_food_macro/bloc/search_macro_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchMacroCubit extends Cubit<SearchMacroState> {
  final OpenAIService _openAIService;
  final FirebaseService _firebaseService;
  SearchMacroCubit({
    required OpenAIService openAIService,
    required FirebaseService firebaseService,
  })  : _openAIService = openAIService,
        _firebaseService = firebaseService,
        super(InitialSearchMacroState());

  void search(String food, ServingType servingType) async {
    emit(LoadingSearchMacroState());
    try {
      final foodData =
          await _openAIService.getMacros(food: food, servingType: servingType);
      emit(LoadedSearchMacroState(foodData));
    } catch (e) {
      print(e);
      emit(ErrorSearchMacroState());
    }
  }

  void clear() {
    emit(InitialSearchMacroState());
  }

  void addSelectedFoodToMyList(List<Food> foods) {
    foods.forEach((food) {
      _firebaseService.addFood(
        food.copyWith(
          dateTime: DateTime.now(),
        ),
      );
    });
  }
}
