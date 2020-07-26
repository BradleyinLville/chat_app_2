import 'package:flutter/material.dart';

class ReadMessages extends StatelessWidget {
  const ReadMessages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ReadMessagesGridView(),
    );
  }
}

class ReadMessagesGridView extends StatefulWidget {
  ReadMessagesGridView({Key key}) : super(key: key);

  @override
  _ReadMessagesGridViewState createState() => _ReadMessagesGridViewState();
}

class _ReadMessagesGridViewState extends State<ReadMessagesGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(gridDelegate: null, itemBuilder: null),
    );
  }
}
