import 'package:json_annotation/json_annotation.dart';

part 'basic_stats_model.g.dart';

@JsonSerializable()
class BasicStatsModel<K, V> {
  String age;
  String relationshipStatus;
  String ethnicity;
  String height;
  String weight;
  String bodyHair;

  BasicStatsModel(
      {this.age,
      this.bodyHair,
      this.ethnicity,
      this.height,
      this.relationshipStatus,
      this.weight});

  factory BasicStatsModel.fromJson(Map<String, dynamic> json) =>
      _$BasicStatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$BasicStatsModelToJson(this);
}
