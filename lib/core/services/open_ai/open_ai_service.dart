import 'package:calorie_tracker/core/enums/serving_type.enum.dart';
import 'package:calorie_tracker/core/models/food/food.dart';

abstract class OpenAIService {
  Future<List<Food>> getMacros({
    required String food,
    required ServingType servingType,
  });
}
