// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_am_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityAmModel _$CommunityAmModelFromJson(Map<String, dynamic> json) {
  return CommunityAmModel(
    communities:
        (json['communities'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CommunityAmModelToJson(CommunityAmModel instance) =>
    <String, dynamic>{
      'communities': instance.communities,
    };
