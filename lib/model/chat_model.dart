import 'package:chat_app/fake_repo/list_of_chats.dart';
import 'package:chat_app/model/profile_model.dart';

class ChatModel {
  int chatID;
  List<ListOfMessages> messages; //these are the messages in this chat
  ProfileModel otherUser;
}
