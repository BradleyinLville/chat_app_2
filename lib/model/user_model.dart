import 'package:chat_app/model/message_model.dart';
import 'package:chat_app/model/profile_model.dart';

class User {
  ProfileModel profileModel;
  List<User> favoritesUsers;
  List<Message> messages;
  User({
    this.profileModel,
    this.favoritesUsers,
  });
}
