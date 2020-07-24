import 'package:flutter/material.dart';


//this class is for everything below the TabBar on the Global screen

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Search')),
    );
  }
}
