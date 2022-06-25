// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodLog _$FoodLogFromJson(Map<String, dynamic> json) => FoodLog(
      id: json['id'] as String?,
      name: json['name'] as String,
      caloriesPerServing: (json['caloriesPerServing'] as num).toDouble(),
      foodType: $enumDecode(_$FoodTypeEnumMap, json['foodType']),
      protein: (json['protein'] as num?)?.toDouble(),
      carbs: (json['carbs'] as num?)?.toDouble(),
      fat: (json['fat'] as num?)?.toDouble(),
      date: DateTime.parse(json['date'] as String),
      foodReference: json['foodReference'] as String?,
      servingEaten: (json['servingEaten'] as num).toDouble(),
    );

Map<String, dynamic> _$FoodLogToJson(FoodLog instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'caloriesPerServing': instance.caloriesPerServing,
      'foodType': _$FoodTypeEnumMap[instance.foodType],
      'protein': instance.protein,
      'carbs': instance.carbs,
      'fat': instance.fat,
      'date': instance.date.toIso8601String(),
      'foodReference': instance.foodReference,
      'servingEaten': instance.servingEaten,
    };

const _$FoodTypeEnumMap = {
  FoodType.breakfast: 'breakfast',
  FoodType.lunch: 'lunch',
  FoodType.dinner: 'dinner',
  FoodType.snack: 'snack',
  FoodType.dessert: 'dessert',
  FoodType.other: 'other',
};
