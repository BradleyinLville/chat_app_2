// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicStatsModel<K, V> _$BasicStatsModelFromJson<K, V>(
    Map<String, dynamic> json) {
  return BasicStatsModel<K, V>(
    age: json['age'] as String,
    bodyHair: json['bodyHair'] as String,
    ethnicity: json['ethnicity'] as String,
    height: json['height'] as String,
    relationshipStatus: json['relationshipStatus'] as String,
    weight: json['weight'] as String,
  );
}

Map<String, dynamic> _$BasicStatsModelToJson<K, V>(
        BasicStatsModel<K, V> instance) =>
    <String, dynamic>{
      'age': instance.age,
      'relationshipStatus': instance.relationshipStatus,
      'ethnicity': instance.ethnicity,
      'height': instance.height,
      'weight': instance.weight,
      'bodyHair': instance.bodyHair,
    };
