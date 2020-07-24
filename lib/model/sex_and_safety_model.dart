import 'package:json_annotation/json_annotation.dart';

part 'sex_and_safety_model.g.dart';

@JsonSerializable()
class SexAndSafetyModel {
  List<String> sexAndSafety;

  SexAndSafetyModel({this.sexAndSafety});

  factory SexAndSafetyModel.fromJson(Map<String, dynamic> json)=>_$SexAndSafetyModelFromJson(json); 

  Map<String,dynamic> toJson() => _$SexAndSafetyModelToJson(this);
}
