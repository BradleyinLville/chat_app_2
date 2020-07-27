import 'package:chat_app/model/basic_stats_model.dart';
import 'package:chat_app/model/community_am_model.dart';
import 'package:chat_app/model/community_into_model.dart';
import 'package:chat_app/model/custom_personal_info_model.dart';
import 'package:chat_app/model/image_thumbnail_model.dart';
import 'package:chat_app/model/open_to_model.dart';
import 'package:chat_app/model/profile_model.dart';
import 'package:chat_app/model/sex_and_safety_model.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListofProfiles {
  static int numberOfProfiles;
  final List<ProfileModel> abstractedDummyList =
      generateDummyList(numberOfProfiles);

  static List<ProfileModel> generateDummyList(int numberOfProfiles) {
    var abstractDL = new List<ProfileModel>();
    String jpeg = '.JPEG';

    FaIcon chooseIcon(bool random) {
      if (random) {
        return FaIcon(
          FontAwesomeIcons.userCircle,
          color: Colors.green,
        );
      } else {
        return FaIcon(
          FontAwesomeIcons.userCircle,
          color: Colors.amber,
        );
      }
    }

    bool randomOnline() {
      var rnd = Random();
      if (rnd.nextInt(99) % 2 == 0) {
        return true;
      } else
        return false;
    }

    int randomImage() {
      int min = 1;
      int max = 46;
      var rnd = Random();
      return min + rnd.nextInt(max - min);
    }

    int randomAge() {
      int min = 18;
      int max = 99;
      var rnd = Random();
      return min + rnd.nextInt(max - min);
    }

    CustomPersonalInfoModel cpim = CustomPersonalInfoModel(
      whatIDo: "play with flutter",
      whatImLookingFor: "my keys!",
      activitiesAndInterests: 'coding',
      whereILive: 'America!!',
    );

    for (var i = 0; i < numberOfProfiles; i++) {
      abstractDL.add(ProfileModel(
        basicStats: BasicStatsModel(
          age: randomAge().toString(),
          relationshipStatus: 'Single',
          ethnicity: 'White',
          height: '5ft 10in',
          weight: '145 lbs',
          bodyHair: 'Some Hair',
        ),
        profileID: i.toString(),
        displayName: 'Profile #$i',
        customPersonalInfo: cpim,
        distance: (randomImage() / 10),
        imageThumbnails: ImageThumbnailModel(
          imageThumbnailLocations: [
            'assets/${randomImage()}$jpeg',
            'assets/${randomImage()}$jpeg',
            'assets/${randomImage()}$jpeg',
          ],
        ),
        communityAm: CommunityAmModel(communities: [
          "Geek",
          'College',
          'Otter',
        ]),
        communityInto: CommunityIntoModel(communities: [
          'College',
          'Daddy',
          'Leather',
        ]),
        sexAndSafety: SexAndSafetyModel(sexAndSafety: [
          'Treatment as Prevention',
          'Top',
          'Bottom',
        ]),
        openTo: OpenToModel(openTo: [
          'Random/NSA',
          'Chat',
          'Realtionship',
        ]),
        onlineIcon: chooseIcon(randomOnline()),
      ));
    }
    abstractDL.shuffle();
    return abstractDL;
  }
}
