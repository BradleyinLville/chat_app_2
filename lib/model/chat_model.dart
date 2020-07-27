import 'package:chat_app/model/profile_model.dart';

class ChatModel {
  int chatID;
  List<dynamic> messages; //these are the messages in this chat
  ProfileModel otherUser;
  bool hasUnread;
}
