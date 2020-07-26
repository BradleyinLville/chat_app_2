import 'package:flutter/material.dart';

class UnreadMessages extends StatelessWidget {
  const UnreadMessages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: UnreadGridView(),
    );
  }
}

class UnreadGridView extends StatefulWidget {
  UnreadGridView({Key key}) : super(key: key);

  @override
  _UnreadGridViewState createState() => _UnreadGridViewState();
}

class _UnreadGridViewState extends State<UnreadGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(gridDelegate: null, itemBuilder: null),
    );
  }
}
