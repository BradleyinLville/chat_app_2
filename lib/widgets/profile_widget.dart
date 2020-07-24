import 'package:bordered_text/bordered_text.dart';
import 'package:chat_app/model/profile_model.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key key, this.profileModel}) : super(key: key);
  @required
  final ProfileModel profileModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCardBasicStats(context, profileModel),
        buildCardIAm(context, profileModel),
        buildCardIAmInto(context, profileModel),
        buildCardIAmOpenTo(context, profileModel),
        buildCardSexAndSafety(context, profileModel),
        buildCardWhereILive(context, profileModel),
      ],
    );
  }

  Card buildCardBasicStats(BuildContext context, ProfileModel profileM) {
    return Card(
      semanticContainer: true,
      color: Colors.indigo[200],
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                BorderedText(
                  strokeColor: Colors.indigo[600],
                  strokeWidth: 2.8,
                  child: Text(
                    profileM.displayName.trim(),
                    style: TextStyle(fontSize: 34, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              //width: 300,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  profileM.onlineIcon,
                  Text(
                    '${profileM.distance.toString()} miles',
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('${profileM.basicStats.ethnicity.trim()}, '),
                Text('${profileM.basicStats.height.trim()}, '),
                Text('${profileM.basicStats.weight.trim()}, '),
                Text('${profileM.basicStats.bodyHair.trim()}'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card buildCardIAm(BuildContext context, ProfileModel profileM) {
    return Card(
        semanticContainer: true,
        color: Colors.indigo[200],
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Column(
              children: <Widget>[
                Text(
                  'I am: \n Coming Soon',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )));
  }

  Card buildCardIAmInto(BuildContext context, ProfileModel profileM) {
    return Card(
        semanticContainer: true,
        color: Colors.indigo[200],
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Column(
              children: <Widget>[
                Text(
                  'I am: \n Coming Soon',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )));
  }

  Card buildCardIAmOpenTo(BuildContext context, ProfileModel profileM) {
    return Card(
        semanticContainer: true,
        color: Colors.indigo[200],
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Column(
              children: <Widget>[
                Text(
                  'I am: \n Coming Soon',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )));
  }

  Card buildCardSexAndSafety(BuildContext context, ProfileModel profileM) {
    return Card(
        semanticContainer: true,
        color: Colors.indigo[200],
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Column(
              children: <Widget>[
                Text(
                  'I am: \n Coming Soon',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )));
  }

  Card buildCardWhatIDo(BuildContext context, ProfileModel profileM) {
    return Card(
        semanticContainer: true,
        color: Colors.indigo[200],
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Column(
              children: <Widget>[
                Text(
                  'I am: \n Coming Soon',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )));
  }

  Card buildCardWhatImLookingFor(BuildContext context, ProfileModel profileM) {
    return Card(
        semanticContainer: true,
        color: Colors.indigo[200],
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Column(
              children: <Widget>[
                Text(
                  'I am: \n Coming Soon',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )));
  }

  Card buildCardWhereILive(BuildContext context, ProfileModel profileM) {
    return Card(
        semanticContainer: true,
        color: Colors.indigo[200],
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Column(
              children: <Widget>[
                Text(
                  'I am: \n Coming Soon',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )));
  }
}
