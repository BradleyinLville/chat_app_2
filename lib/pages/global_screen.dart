import 'package:chat_app/widgets/profile_grid_view.dart';
import 'package:flutter/material.dart';

//this class is for everything below the TabBar on the Global screen
class Global extends StatefulWidget {
  Global({Key key}) : super(key: key);

  @override
  _GlobalState createState() => _GlobalState();
}

class _GlobalState extends State<Global> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: CustomGridView()), //May substitute for GridVew or similar
    );
  }
}
