import 'package:chat_app/model/profile_model.dart';

class Message {
  ProfileModel sender;
  ProfileModel otherPerson;
  ProfileModel me;
  String time;
  String text;
  bool unread;
  int chatID;

  int get getChatID => chatID;

  set setChatID(int chatID) => this.chatID = chatID;
  Message({
    this.otherPerson,
    this.me,
    this.sender,
    this.time,
    this.text,
    this.unread,
    this.chatID,
  });
}
