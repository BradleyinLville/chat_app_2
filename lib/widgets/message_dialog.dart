import 'package:chat_app/model/profile_model.dart';
import 'package:flutter/material.dart';

class MessageDialoge extends StatefulWidget {
  final ProfileModel profileModel;
  const MessageDialoge({
    Key key,
    this.profileModel,
  }) : super(key: key);
  @override
  _MessageDialogeState createState() => _MessageDialogeState();
}

class _MessageDialogeState extends State<MessageDialoge> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: () => Navigator.pop(context),
    ));
  }
}
