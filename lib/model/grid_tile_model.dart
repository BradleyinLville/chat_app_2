import 'package:chat_app/model/profile_model.dart';

class CustomGTileModel {
  String imageAsset;
  String displayName;
  String distance;
  bool isOnline;
  ProfileModel profileModel;
  CustomGTileModel({
    this.imageAsset,
    this.displayName,
    this.distance,
    this.isOnline,
  });

  String get getImage => imageAsset;

  void setImage(String imageAsset) => this.imageAsset = imageAsset;

  String get getDisplayName => displayName;

  void setDisplayName(String displayName) => this.displayName = displayName;

  String get getDistance => distance;

  void setDistance(String distance) => this.distance = distance;

  bool get getIsOnline => isOnline;

  void setIsOnline(bool isOnline) => this.isOnline = isOnline;

  CustomGTileModel.fromProfileModel(ProfileModel profileModel) {
    setImage(profileModel.imageThumbnails.imageThumbnailLocations[0]);
    setDisplayName(profileModel.displayName);
    setDistance(profileModel.distance.toString());
    setIsOnline(profileModel.isOnline);
  }
}
