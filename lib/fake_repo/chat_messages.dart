import 'dart:math';

import 'package:chat_app/fake_repo/dummy_messages.dart';
import 'package:chat_app/fake_repo/list_of_profiles.dart';
import 'package:chat_app/model/message_model.dart';
import 'package:chat_app/model/profile_model.dart';

class ChatMessages {
  static int assignChatID() {
    int min = 1;
    int max = 1000;
    var rnd = Random();
    return min + rnd.nextInt(max - min);
  }

  final int chatID = assignChatID();
  final int numberOfMessages;
  final List<Message> messages = generateMessageList(10);
  Message message;
  static bool randomBoolResponse() {
    var rnd = Random();
    if (rnd.nextInt(99) % 2 == 0) {
      return true;
    } else
      return false;
  }

  bool hasUnread;

  ChatMessages(
    this.hasUnread,
    this.numberOfMessages,
  );
  static List<ChatMessages> chatsList(
      int numberOfChats, bool unread, int numberOfMessages) {
    List<ChatMessages> tmp;
    for (var i = 0; i < numberOfChats; i++) {
      ChatMessages temp = ChatMessages(unread, numberOfMessages);

      tmp.add(temp);
    }
    return tmp;
  }

  static List<Message> generateMessageList(int numberOfMessages) {
    var dummyListMessageText = DummyMessages().dummyMsg;
    ProfileModel me;
    ProfileModel otherPerson;
    List<Message> generatedList;

    ProfileModel generateMe() {
      var tempList = ListofProfiles.generateDummyList(
          20); //using a hard number b/c this is just to get random profiles
      tempList.shuffle();
      return tempList[0];
    }

    ProfileModel generateOtherPerson() {
      var tempList = ListofProfiles.generateDummyList(20);
      tempList.shuffle();
      return tempList[0];
    }

    bool meSending() {
      if (randomBoolResponse()) {
        return true;
      }
      return false;
    }

    ProfileModel sendingPM() {
      if (meSending()) {
        return me;
      } else {
        return otherPerson;
      }
    }

    String randomTime() {
      var rnd = Random();
      int minHour = 1;
      int maxHour = 12;
      int minMin = 10;
      int maxMin = 59;
      String hour = (minHour + rnd.nextInt(maxHour - minHour)).toString();
      String minute = (minMin + rnd.nextInt(maxMin - minMin)).toString();
      return '$hour : $minute';
    }

    for (var i = 0; i < dummyListMessageText.length; i++) {
      generatedList.add(Message(
        text: dummyListMessageText[i],
        chatID: assignChatID(),
        time: randomTime(),
        me: generateMe(),
        otherPerson: generateOtherPerson(),
        sender: sendingPM(),
      ));
    }
    return generatedList;
  }
}

// class Chat {
//   List<dynamic> masterChatList;
//   bool hasUnread;
//   List<Message> chatMessages;
//   List<Message> initChatMessages(List<dynamic> masterChatList) =>
//       this.chatMessages;
//   bool initHasUnread(hasUnreadRandom()) => this.hasUnread;
//   bool hasUnreadRandom() {
//     var rnd = Random();
//     if (rnd.nextInt(99) % 2 == 0) {
//       return true;
//     } else
//       return false;
//   }

//   List<dynamic> oneChatMessageList(
//       List<List<dynamic>> masterChatList, int index) {
//     return masterChatList[index];
//   }
// }

// class ListOfChats {
//   static int numberOfChats;
//   var listOfMessages;

//   List<dynamic> messagesByChatID(dynamic listOfMessages, int numberOfChats) {
//     List<dynamic> eachChatInList;
//     //listOfMessages.fakeMessageList.sort((a, b) => a.chatID.compareTo(b.chatID));
//     for (var i = 0; i < numberOfChats; i++) {
//       var singleChatMessages;
//       singleChatMessages.add(listOfMessages.fakeMessageList
//           .where((message) => message.chatID == i)
//           .map((message) => message));
//       eachChatInList.add(singleChatMessages);
//     }
//     return eachChatInList;
//   }
// }
