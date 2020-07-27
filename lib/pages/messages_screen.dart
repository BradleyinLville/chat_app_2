import 'package:chat_app/widgets/read_messages.dart';
import 'package:flutter/material.dart';

//this class is for everything below the TabBar on the Global screen

class Messages extends StatefulWidget {
  Messages({Key key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[300],
      child: Center(child: ReadMessages()),
    );
  }
}
