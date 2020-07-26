// import 'dart:math';

// import 'package:chat_app/fake_repo/dummy_messages.dart';
// import 'package:chat_app/fake_repo/list_of_profiles.dart';
// import 'package:chat_app/model/message_model.dart';
// import 'package:chat_app/model/profile_model.dart';

// class ListOfMessages {
//   final List<Message> fakeMessageList = generateMessageList();

//   static List<Message> generateMessageList() {
//     var dummyListMessageText = DummyMessages().dummyMsg;
//     ProfileModel me;
//     ProfileModel otherPerson;
//     List<Message> generatedList;

//     ProfileModel generateMe() {
//       var tempList = ListofProfiles.generateDummyList();
//       tempList.shuffle();
//       return tempList[0];
//     }

//     List<ProfileModel> generatePersonList() {
//       List<ProfileModel> list;
//       var tempList = ListofProfiles.generateDummyList();
//       tempList.shuffle();
//       for (var i = 0; i < 7; i++) {
//         list.add(tempList[i]);
//       }
//       return list;
//     }

//     List<ProfileModel> otherPersonList = generatePersonList();

//     int assignChatID() {
//       int min = 1;
//       int max = 7;
//       var rnd = Random();
//       return min + rnd.nextInt(max - min);
//     }

//     ProfileModel assignRandomOtherPerson(List<ProfileModel> otherPersonList) {
//       int min = 1;
//       int max = otherPersonList.length;
//       var rnd = Random();
//       int index = min + rnd.nextInt(max - min);
//       return otherPersonList[index];
//     }

//     bool randomBoolResponse() {
//       var rnd = Random();
//       if (rnd.nextInt(99) % 2 == 0) {
//         return true;
//       } else
//         return false;
//     }

//     bool isUnread() {
//       if (randomBoolResponse()) {
//         return true;
//       }
//       return false;
//     }

//     bool meSending() {
//       if (randomBoolResponse()) {
//         return true;
//       }
//       return false;
//     }

//     ProfileModel sendingPM() {
//       if (meSending()) {
//         return me;
//       } else {
//         return otherPerson;
//       }
//     }

//     String randomTime() {
//       var rnd = Random();
//       int minHour = 1;
//       int maxHour = 12;
//       int minMin = 10;
//       int maxMin = 59;
//       String hour = (minHour + rnd.nextInt(maxHour - minHour)).toString();
//       String minute = (minMin + rnd.nextInt(maxMin - minMin)).toString();
//       return '$hour : $minute';
//     }

//     for (var i = 0; i < dummyListMessageText.length; i++) {
//       generatedList.add(Message(
//         text: dummyListMessageText[i],
//         chatID: assignChatID(),
//         time: randomTime(),
//         me: generateMe(),
//         otherPerson: assignRandomOtherPerson(otherPersonList),
//         unread: isUnread(),
//         sender: sendingPM(),
//       ));
//     }
//     return generatedList;
//   }
// }
