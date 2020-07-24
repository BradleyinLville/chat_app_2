// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_thumbnail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageThumbnailModel _$ImageThumbnailModelFromJson(Map<String, dynamic> json) {
  return ImageThumbnailModel(
    imageThumbnailLocations: (json['imageThumbnailLocations'] as List)
        ?.map((e) => e as String)
        ?.toList(),
  );
}

Map<String, dynamic> _$ImageThumbnailModelToJson(
        ImageThumbnailModel instance) =>
    <String, dynamic>{
      'imageThumbnailLocations': instance.imageThumbnailLocations,
    };
