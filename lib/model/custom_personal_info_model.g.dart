// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_personal_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomPersonalInfoModel _$CustomPersonalInfoModelFromJson(
    Map<String, dynamic> json) {
  return CustomPersonalInfoModel(
    activitiesAndInterests: json['activitiesAndInterests'] as String,
    whatIDo: json['whatIDo'] as String,
    whatImLookingFor: json['whatImLookingFor'] as String,
    whereILive: json['whereILive'] as String,
  );
}

Map<String, dynamic> _$CustomPersonalInfoModelToJson(
        CustomPersonalInfoModel instance) =>
    <String, dynamic>{
      'whatIDo': instance.whatIDo,
      'whatImLookingFor': instance.whatImLookingFor,
      'activitiesAndInterests': instance.activitiesAndInterests,
      'whereILive': instance.whereILive,
    };
