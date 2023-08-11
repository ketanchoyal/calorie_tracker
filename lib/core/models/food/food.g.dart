// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      nutrition: Nutrition.fromJson(json['nutrition'] as Map<String, dynamic>),
      barcode: json['barcode'] as String?,
      notes: json['notes'] as String?,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      quantity: (json['quantity'] as num?)?.toDouble(),
      incredients: (json['incredients'] as List<dynamic>?)
          ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
      isRecipe: json['isRecipe'] as bool?,
    );

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'nutrition': instance.nutrition.toJson(),
      'barcode': instance.barcode,
      'notes': instance.notes,
      'dateTime': instance.dateTime?.toIso8601String(),
      'quantity': instance.quantity,
      'incredients': instance.incredients?.map((e) => e.toJson()).toList(),
      'isRecipe': instance.isRecipe,
    };

Nutrition _$NutritionFromJson(Map<String, dynamic> json) => Nutrition(
      calories: (json['calories'] as num).toDouble(),
      fat: (json['fat'] as num?)?.toDouble(),
      carbs: (json['carbs'] as num?)?.toDouble(),
      protein: (json['protein'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$NutritionToJson(Nutrition instance) => <String, dynamic>{
      'calories': instance.calories,
      'fat': instance.fat,
      'carbs': instance.carbs,
      'protein': instance.protein,
    };
