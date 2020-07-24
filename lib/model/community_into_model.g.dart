// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_into_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityIntoModel _$CommunityIntoModelFromJson(Map<String, dynamic> json) {
  return CommunityIntoModel(
    communities:
        (json['communities'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CommunityIntoModelToJson(CommunityIntoModel instance) =>
    <String, dynamic>{
      'communities': instance.communities,
    };
