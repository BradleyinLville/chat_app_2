import 'package:chat_app/widgets/profile_grid_view.dart';
import 'package:flutter/material.dart';

//this class is for everything below the TabBar on the Global screen

class Nearby extends StatefulWidget {
  Nearby({Key key}) : super(key: key);

  @override
  _NearbyState createState() => _NearbyState();
}

class _NearbyState extends State<Nearby> {
//so it runs the code above first
  @override
  void initState() {
    super.initState();
    //   ProfileHelper.getProfile(loadString().toString());
    //   ProfileHelper.getMyProfile();
  }

  @override
  Widget build(BuildContext context) {
    //ProfileModel profileModel;

    return Container(child: CustomGridView());
  }
}

// Center(
//             child: FutureBuilder(
//                 future: DefaultAssetBundle.of(context)
//                     .loadString('assets/testing_list.json'),
//                 builder: (context, snapshot) {
//                   List<ProfileModel> profiles =
//                       ProfileHelper.parseProfile(snapshot.data.toString());

//                   return ListView.builder(
//                       itemCount: profiles.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return ListTile(
//                           title: Text(profileModel.displayName[index]),
//                           subtitle:
//                               Text(profileModel.distance.toString()[index]),
//                         );
//                       });
//                 }))
