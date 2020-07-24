// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sex_and_safety_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SexAndSafetyModel _$SexAndSafetyModelFromJson(Map<String, dynamic> json) {
  return SexAndSafetyModel(
    sexAndSafety:
        (json['sexAndSafety'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$SexAndSafetyModelToJson(SexAndSafetyModel instance) =>
    <String, dynamic>{
      'sexAndSafety': instance.sexAndSafety,
    };
