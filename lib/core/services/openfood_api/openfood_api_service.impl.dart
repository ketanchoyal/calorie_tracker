import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:openfoodfacts/openfoodfacts.dart';

import 'openfood_api_service.dart';

class OpenFoodAPIServiceImpl implements OpenFoodAPIService {
  OpenFoodAPIServiceImpl({String? username, String? password}) {
    OpenFoodAPIConfiguration.userAgent = UserAgent(name: 'Calorie Tracker');
    if (username != null && password != null) {
      OpenFoodAPIConfiguration.globalUser = User(
        userId: username,
        password: password,
      );
    }

    OpenFoodAPIConfiguration.globalLanguages = <OpenFoodFactsLanguage>[
      OpenFoodFactsLanguage.ENGLISH
    ];
  }
  @override
  Future<FoodData> getFoodData(String barcode) async {
    try {
      ProductQueryConfiguration config = ProductQueryConfiguration(
        barcode,
        version: ProductQueryVersion.v3,
      );
      ProductResultV3 result = await OpenFoodAPIClient.getProductV3(config);
      if ([ProductResultStatus.success, ProductResultStatus.successWarnings]
          .contains(result.status)) {
        final product = result.product!;
        final foodItem = Food.fromOpenFoodAPI(
          id: product.barcode,
          name: product.productName ?? product.genericName ?? '',
          description: product.ingredientsText,
          imageUrl: product.imageFrontUrl,
          calories: product.nutriments
                  ?.getValue(Nutrient.energyKCal, PerSize.oneHundredGrams) ??
              0,
          fat: product.nutriments
              ?.getValue(Nutrient.fat, PerSize.oneHundredGrams),
          carbs: product.nutriments
              ?.getValue(Nutrient.carbohydrates, PerSize.oneHundredGrams),
          protein: product.nutriments
              ?.getValue(Nutrient.proteins, PerSize.oneHundredGrams),
          barcode: barcode,
          notes: product.servingSize,
        );
        return (food: foodItem, error: null);
      } else {
        return (food: null, error: result.status.toString());
      }
    } catch (e) {
      return (food: null, error: e.toString());
    }
  }

  @override
  Future getAutoCompleteData(String query) {
    // TODO: implement getAutoCompleteData
    throw UnimplementedError();
  }
}
