
import 'package:json_annotation/json_annotation.dart';

part 'image_thumbnail_model.g.dart';

@JsonSerializable()
class ImageThumbnailModel {
  List<String> imageThumbnailLocations;
  //List<String> fullSizedLocations;

  ImageThumbnailModel({this.imageThumbnailLocations,});


  factory ImageThumbnailModel.fromJson(Map<String, dynamic> json)=>_$ImageThumbnailModelFromJson(json); 

  Map<String,dynamic> toJson() => _$ImageThumbnailModelToJson(this);
}
