import 'package:chat_app/widgets/custom_drawer_guitar.dart';
import 'package:chat_app/widgets/tab_bar_logic.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool flip = true;
    AppBar appBar = flip
        ? AppBar()
        : AppBar(
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => CustomDrawer.of(context).open(),
                );
              },
            ),
          );
    Widget child = MyHomePage(appBar: appBar);
    if (flip) {
      child = CustomGuitarDrawer(child: child);
    } else {
      child = CustomDrawer(child: child);
    }
    return MaterialApp(
      title: 'ChatApp',
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.limeAccent,
      ),
      home: child,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final AppBar appBar;

  MyHomePage({Key key, @required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: appBar,
        body: TabBarLogic(),
      ),
    );
  }
}
