import 'package:json_annotation/json_annotation.dart';
part 'custom_personal_info_model.g.dart';

@JsonSerializable()
class CustomPersonalInfoModel {
  String whatIDo;
  String whatImLookingFor;
  String activitiesAndInterests;
  String whereILive;

  CustomPersonalInfoModel({
    this.activitiesAndInterests,
    this.whatIDo,
    this.whatImLookingFor,
    this.whereILive,}
  );

  factory CustomPersonalInfoModel.fromJson(Map<String, dynamic> json)=>_$CustomPersonalInfoModelFromJson(json); 

  Map<String,dynamic> toJson() => _$CustomPersonalInfoModelToJson(this);

}
