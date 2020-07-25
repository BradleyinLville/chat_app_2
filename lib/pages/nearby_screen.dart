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
  Widget build(BuildContext context) {
    //ProfileModel profileModel;

    return Container(child: Center(child: CustomGridView()));
  }
}
