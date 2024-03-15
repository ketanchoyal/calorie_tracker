import 'dart:convert';

import 'package:calorie_tracker/core/enums/serving_type.enum.dart';
import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:calorie_tracker/core/services/open_ai/open_ai_service.dart';
import 'package:dart_openai/dart_openai.dart';

class OpenAIServiceImpl extends OpenAIService {
  final FirebaseService _firebaseService;
  OpenAIServiceImpl(this._firebaseService);

  init() {
    _firebaseService.getProfileData().then((profile) {
      if (profile != null && profile.keys != null) {
        OpenAI.organization = profile.keys!.orgId;
        OpenAI.apiKey = profile.keys!.openAiToken;
      }
    });
    OpenAI.showLogs = true;
    OpenAI.showResponsesLogs = true;
  }

  // the system message that will be sent to the request.
  OpenAIChatCompletionChoiceMessageModel get _systemMessage =>
      OpenAIChatCompletionChoiceMessageModel(
        content: [
          OpenAIChatCompletionChoiceMessageContentItemModel.text(
            "return any message you are given as JSON.",
          ),
          //context for the user message
          OpenAIChatCompletionChoiceMessageContentItemModel.text(
            "Related to protein and nutrition.",
          ),
          OpenAIChatCompletionChoiceMessageContentItemModel.text(
            "return nutrition information in grams",
          ),
          OpenAIChatCompletionChoiceMessageContentItemModel.text(
            "return using format: {protein: 20, fat: 10, carbs: 5, calories: 200}",
          ),
        ],
        role: OpenAIChatMessageRole.assistant,
      );

  @override
  Future<List<Food>> getMacros({
    required String food,
    required ServingType servingType,
  }) async {
    // the user message that will be sent to the request.
    OpenAIChatCompletionChoiceMessageModel userMessage =
        OpenAIChatCompletionChoiceMessageModel(
      content: [
        OpenAIChatCompletionChoiceMessageContentItemModel.text(
          "Macros in a ${servingType.value} $food.",
        ),
      ],
      role: OpenAIChatMessageRole.user,
    );

    // List<OpenAIModelModel> models = await OpenAI.instance.model.list();

    // print(models);
    // all messages to be sent.
    final requestMessages = [
      _systemMessage,
      userMessage,
    ];

// the actual request.
    OpenAIChatCompletionModel chatCompletion =
        await OpenAI.instance.chat.create(
      model: "gpt-3.5-turbo-1106",
      responseFormat: {"type": "json_object"},
      seed: 6,
      messages: requestMessages,
      temperature: 0.2,
      maxTokens: 500,
    );

    final data =
        jsonDecode(chatCompletion.choices.first.message.content!.first.text!)
            as Map<String, dynamic>;
    final rawNutritionData = data;

    final List<Food> foods = [];

    //check if rawNutritionData Map have another Map inside
    for (final key in rawNutritionData.keys) {
      if (rawNutritionData[key] is Map) {
        try {
          final foodName = key;
          final Nutrition nutrition =
              Nutrition.fromJson(rawNutritionData[foodName]);
          foods.add(Food(name: foodName, nutrition: nutrition));
        } catch (e) {
          print("From AI Service, Error parsing food: $e");
        }
      } else {
        final foodName = food;
        final Nutrition nutrition = Nutrition.fromJson(rawNutritionData);
        foods.add(
          Food(
            name: foodName,
            nutrition: nutrition,
            notes: "Serving type: ${servingType.displayValue}",
            isRecipe: false,
          ),
        );
        break;
      }
    }

    return foods;
  }
}
