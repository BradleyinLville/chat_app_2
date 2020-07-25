import 'package:bordered_text/bordered_text.dart';
import 'package:chat_app/model/profile_model.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key key, this.profileModel}) : super(key: key);
  @required
  final ProfileModel profileModel;
  Widget buildProfileListView(BuildContext context, List<Widget> profileList) {
    return ListView.builder(
        itemCount: profileList.length,
        itemBuilder: ((BuildContext context, int i) {
          return profileList[i];
        }));
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> profileList = [
      buildCardBasicStats(context, profileModel),
      buildCardIAm(context, profileModel),
      buildCardIAmInto(context, profileModel),
      buildCardIAmOpenTo(context, profileModel),
      buildCardSexAndSafety(context, profileModel),
      buildCardWhatIDo(context, profileModel),
      buildCardWhatImLookingFor(context, profileModel),
      buildCardActivitiesAndInterests(context, profileModel),
      buildCardWhereILive(context, profileModel),
    ];
    var screenSize = MediaQuery.of(context).size;
    return Container(
      //clipBehavior: Clip.antiAlias,
      constraints: BoxConstraints.expand(
        width: screenSize.width * .9,
        height: screenSize.height * .9,
      ),
      child: buildProfileListView(context, profileList),
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('I am Into: \n',
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
                      '${profileM.communityInto.communities[0]},     ',
                    ),
                    Text(
                      '${profileM.communityInto.communities[1]},     ',
                    ),
                    Text(
                      '${profileM.communityInto.communities[2]}      ',
                    ),
                  ],
                ),
              ],
            ),
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('I am Open To: \n',
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
                        '${profileM.openTo.openTo[0]},     ',
                      ),
                      Text(
                        '${profileM.openTo.openTo[1]},     ',
                      ),
                      Text(
                        '${profileM.openTo.openTo[2]}      ',
                      ),
                    ],
                  )
                ])),
          ),
        ));
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Sex And Safety: \n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${profileM.sexAndSafety.sexAndSafety[0]},   ',
                        ),
                        Text(
                          '${profileM.sexAndSafety.sexAndSafety[1]},   ',
                        ),
                        Text(
                          '${profileM.sexAndSafety.sexAndSafety[2]}',
                        ),
                      ],
                    ),
                  ],
                )),
          )),
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'What I do: \n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '${profileM.customPersonalInfo.whatIDo}',
                        ),
                      ],
                    )
                  ],
                )),
          )),
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'What I\'m Looking For: \n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '${profileM.customPersonalInfo.whatImLookingFor}',
                        ),
                      ],
                    )
                  ],
                )),
          )),
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Where I Live: \n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '${profileM.customPersonalInfo.whereILive}',
                        ),
                      ],
                    )
                  ],
                )),
          )),
    );
  }

  Container buildCardActivitiesAndInterests(
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Activities and Interests: \n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '${profileM.customPersonalInfo.activitiesAndInterests}',
                        ),
                      ],
                    )
                  ],
                )),
          )),
    );
  }
}
