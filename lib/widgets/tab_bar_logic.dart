import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

import '../pages/global_screen.dart';
import '../pages/messages_screen.dart';
import '../pages/nearby_screen.dart';
import '../pages/search_screen.dart';

class TabBarLogic extends StatefulWidget {
  TabBarLogic({Key key}) : super(key: key);

  @override
  _TabBarLogicState createState() => _TabBarLogicState();
}

class _TabBarLogicState extends State<TabBarLogic>
    with SingleTickerProviderStateMixin {
  //method to build each of the tabs with formatted text
  Tab tabFactory(String title) {
    return Tab(
        child: BorderedText(
      strokeColor: Colors.deepPurple,
      strokeWidth: 2.0,
      child: Text(title,
          style: TextStyle(
            fontSize: 13, color: Colors.white,
            // decorationStyle: TextDecorationStyle.wavy,
            // decorationColor: Colors.red,
          )),
    ));
  }

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            tabFactory("Global"),
            tabFactory("Nearby"),
            tabFactory("Search"),
            tabFactory("Messages"),
          ],
        ),
        centerTitle: true,
        elevation: 0.7,
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Global(),
          Nearby(),
          Search(),
          Messages(),
        ],
      ),
    );
  }
}
