import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'basic_stats_model.dart';
import 'community_am_model.dart';
import 'community_into_model.dart';
import 'custom_personal_info_model.dart';
import 'image_thumbnail_model.dart';
import 'open_to_model.dart';
import 'sex_and_safety_model.dart';

@JsonSerializable()
class ProfileModel {
  String profileID;
  String displayName;
  //! Add a method to determine the distance using a geolocation service
  double distance;
  ImageThumbnailModel imageThumbnails;
  bool isOnline;
  FaIcon onlineIcon;
  BasicStatsModel basicStats;
  CustomPersonalInfoModel customPersonalInfo;
  CommunityAmModel communityAm;
  CommunityIntoModel communityInto;
  OpenToModel openTo;
  SexAndSafetyModel sexAndSafety;

  @JsonSerializable()
  ProfileModel({
    this.profileID,
    this.displayName,
    this.distance,
    this.imageThumbnails,
    this.customPersonalInfo,
    this.isOnline,
    this.basicStats,
    this.communityAm,
    this.communityInto,
    this.openTo,
    this.sexAndSafety,
    this.onlineIcon,
  });
}
