import 'package:json_annotation/json_annotation.dart';
part 'community_into_model.g.dart';

@JsonSerializable()
class CommunityIntoModel {
  List<String> communities;

  CommunityIntoModel({this.communities});
  factory CommunityIntoModel.fromJson(Map<String, dynamic> json)=>_$CommunityIntoModelFromJson(json); 

  Map<String,dynamic> toJson() => _$CommunityIntoModelToJson(this);
}
