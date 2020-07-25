import 'package:json_annotation/json_annotation.dart';

part 'open_to_model.g.dart';

@JsonSerializable()
class OpenToModel {
  List<String> openTo;

  OpenToModel({this.openTo});

  factory OpenToModel.fromJson(Map<String, dynamic> json) =>
      _$OpenToModelFromJson(json);

  Map<String, dynamic> toJson() => _$OpenToModelToJson(this);
}
