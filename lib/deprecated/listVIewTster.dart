import 'package:chat_app/fake_repo/list_of_profiles.dart';
import 'package:chat_app/model/profile_model.dart';
import 'package:flutter/material.dart';

class ListViewTester extends StatefulWidget {
  ListViewTester({Key key}) : super(key: key);

  @override
  _ListViewTesterState createState() => _ListViewTesterState();
}

class _ListViewTesterState extends State<ListViewTester> {
  List<ProfileModel> tmp = ListofProfiles.generateDummyList(145);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(14),
        itemCount: tmp.length, //tmp.length,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            onTap: () {},
            title: Text(tmp[i].displayName),
            subtitle: Text(
                "${tmp[i].distance.toString()} Age: ${tmp[i].basicStats.age.toString()}"),
          );
        });
  }
}
