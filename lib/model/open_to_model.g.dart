// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_to_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenToModel _$OpenToModelFromJson(Map<String, dynamic> json) {
  return OpenToModel(
    openTo: (json['openTo'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$OpenToModelToJson(OpenToModel instance) =>
    <String, dynamic>{
      'openTo': instance.openTo,
    };
