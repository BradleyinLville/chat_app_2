import 'package:chat_app/model/profile_model.dart';
import 'package:chat_app/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key, this.profileModel});
  //final Profile profile;
  final ProfileModel profileModel;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: this.profileModel.displayName,
      child: SafeArea(
        minimum: EdgeInsets.fromLTRB(15, 46, 15, 10),
        //top: true,
        child: Center(
          child: Profile(
            profileModel: this.profileModel,
          ),
        ),
      ),
    );
  }
}
