// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      goals: json['goals'] == null
          ? null
          : Goals.fromJson(json['goals'] as Map<String, dynamic>),
      keys: json['keys'] == null
          ? null
          : Keys.fromJson(json['keys'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'goals': instance.goals?.toJson(),
      'keys': instance.keys?.toJson(),
    };

Goals _$GoalsFromJson(Map<String, dynamic> json) => Goals(
      calories: (json['calories'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      carbs: (json['carbs'] as num).toDouble(),
    );

Map<String, dynamic> _$GoalsToJson(Goals instance) => <String, dynamic>{
      'calories': instance.calories,
      'protein': instance.protein,
      'fat': instance.fat,
      'carbs': instance.carbs,
    };

Keys _$KeysFromJson(Map<String, dynamic> json) => Keys(
      openAiToken: json['openAiToken'] as String,
      orgId: json['orgId'] as String,
    );

Map<String, dynamic> _$KeysToJson(Keys instance) => <String, dynamic>{
      'openAiToken': instance.openAiToken,
      'orgId': instance.orgId,
    };
