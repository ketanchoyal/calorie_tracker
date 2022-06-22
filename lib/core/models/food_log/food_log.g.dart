// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodLog _$$_FoodLogFromJson(Map<String, dynamic> json) => _$_FoodLog(
      id: json['id'] as String,
      name: json['name'] as String,
      caloriesPerServing: (json['caloriesPerServing'] as num).toDouble(),
      protein: (json['protein'] as num?)?.toDouble(),
      carbs: (json['carbs'] as num?)?.toDouble(),
      fat: (json['fat'] as num?)?.toDouble(),
      date: DateTime.parse(json['date'] as String),
      foodReference: json['foodReference'] as String?,
      servingEaten: (json['servingEaten'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FoodLogToJson(_$_FoodLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'caloriesPerServing': instance.caloriesPerServing,
      'protein': instance.protein,
      'carbs': instance.carbs,
      'fat': instance.fat,
      'date': instance.date.toIso8601String(),
      'foodReference': instance.foodReference,
      'servingEaten': instance.servingEaten,
    };
