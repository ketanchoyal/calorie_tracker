// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodLog _$$_FoodLogFromJson(Map<String, dynamic> json) => _$_FoodLog(
      id: json['id'] as String,
      name: json['name'] as String,
      calories: (json['calories'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      carbs: (json['carbs'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      foodReference: json['foodReference'],
      servingEaten: (json['servingEaten'] as num).toDouble(),
      servingSize: (json['servingSize'] as num).toDouble(),
      barcode: json['barcode'] as String,
    );

Map<String, dynamic> _$$_FoodLogToJson(_$_FoodLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'calories': instance.calories,
      'protein': instance.protein,
      'carbs': instance.carbs,
      'date': instance.date.toIso8601String(),
      'foodReference': instance.foodReference,
      'servingEaten': instance.servingEaten,
      'servingSize': instance.servingSize,
      'barcode': instance.barcode,
    };
