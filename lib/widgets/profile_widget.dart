import 'package:bordered_text/bordered_text.dart';
import 'package:chat_app/model/profile_model.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key key, this.profileModel}) : super(key: key);
  @required
  final ProfileModel profileModel;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      //clipBehavior: Clip.antiAlias,
      constraints: BoxConstraints.expand(
        width: screenSize.width * .9,
        height: screenSize.height * .9,
      ),
      child: Column(
        children: [
          buildCardBasicStats(context, profileModel),
          buildCardIAm(context, profileModel),
          buildCardIAmInto(context, profileModel),
          buildCardIAmOpenTo(context, profileModel),
          buildCardSexAndSafety(context, profileModel),
          buildCardWhereILive(context, profileModel),
        ],
      ),
    );
  }

  Container buildCardBasicStats(BuildContext context, ProfileModel profileM) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * .9,
      child: Card(
        semanticContainer: true,
        color: Colors.indigo[200],
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
        ),
      ),
    );
  }

  Container buildCardIAm(BuildContext context, ProfileModel profileM) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * .9,
      child: Card(
          semanticContainer: false,
          color: Colors.indigo[200],
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                excludeFromSemantics: false,
                onTap: () => Navigator.pop(context),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('I am: \n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${profileM.communityAm.communities[0]},     ',
                        ),
                        Text(
                          '${profileM.communityAm.communities[1]},     ',
                        ),
                        Text(
                          '${profileM.communityAm.communities[2]}      ',
                        ),
                      ],
                    ),
                  ],
                )),
          )),
    );
  }

  Container buildCardIAmInto(BuildContext context, ProfileModel profileM) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * .9,
      child: Card(
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
                'I Am Into: \n Coming Soon',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildCardIAmOpenTo(BuildContext context, ProfileModel profileM) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * .9,
      child: Card(
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
                    'I Am Open To: \n Coming Soon',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ))),
    );
  }

  Container buildCardSexAndSafety(BuildContext context, ProfileModel profileM) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * .9,
      child: Card(
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
                    'Sex And Safety: \n Coming Soon',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ))),
    );
  }

  Container buildCardWhatIDo(BuildContext context, ProfileModel profileM) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * .9,
      child: Card(
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
                    'What I Do: \n Coming Soon',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ))),
    );
  }

  Container buildCardWhatImLookingFor(
      BuildContext context, ProfileModel profileM) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * .9,
      child: Card(
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
                    'What I am Looking For: \n Coming Soon',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ))),
    );
  }

  Container buildCardWhereILive(BuildContext context, ProfileModel profileM) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * .9,
      child: Card(
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
                    'Where I Live: \n Coming Soon',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ))),
    );
  }
}
