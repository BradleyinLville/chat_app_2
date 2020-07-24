import 'package:json_annotation/json_annotation.dart';
part 'community_am_model.g.dart';

@JsonSerializable()
class CommunityAmModel {
  List<String> communities;

  CommunityAmModel({this.communities});

  factory CommunityAmModel.fromJson(Map<String, dynamic> json)=>_$CommunityAmModelFromJson(json); 

  Map<String,dynamic> toJson() => _$CommunityAmModelToJson(this);
}
