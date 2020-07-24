import 'package:flutter/material.dart';

class MyProfileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: double.infinity,
      child: Material(
        color: Colors.teal,
        child: SafeArea(
          child: Theme(
            data: ThemeData(brightness: Brightness.dark),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 25),
                Image.asset(
                  'assets/BradSquidApp.png',
                  width: 300,
                ),
                SizedBox(height: 75),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                ),
                ListTile(
                  leading: Icon(Icons.person_pin),
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(Icons.stars),
                  title: Text('Favourites'),
                ),
                ListTile(
                  leading: Icon(Icons.place),
                  title: Text('Map'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
