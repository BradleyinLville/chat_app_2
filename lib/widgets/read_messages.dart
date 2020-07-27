import 'package:bordered_text/bordered_text.dart';
import 'package:chat_app/fake_repo/chat_messages.dart';
import 'package:chat_app/model/message_model.dart';
import 'package:chat_app/model/profile_model.dart';
import 'package:chat_app/widgets/message_dialog.dart';
import 'package:flutter/material.dart';

class ReadMessages extends StatefulWidget {
  //ChatMessages chatMessages = new ChatMessages(false, 10);

  @override
  _ReadMessagesState createState() => _ReadMessagesState();
}

class _ReadMessagesState extends State<ReadMessages> {
  List<ChatMessages> listy = ChatMessages.chatsList(7, false, 10);

  List<InkWell> inkwellFactory(List<ChatMessages> chatList) {
    List<InkWell> tempList;
    for (var i = 0; i < chatList.length; i++) {
      var chatOne = chatList[i];
      List<Message> temp = chatOne.messages;
      ProfileModel pm = temp[0].otherPerson;
      tempList.add(InkWell(
          onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageDialoge(
                    profileModel: pm,
                  ),
                ),
              ),
          child: GridTile(
            header: BorderedText(
              strokeColor: Colors.blue,
              strokeWidth: 2.5,
              child: Text(
                pm.displayName,
                style: TextStyle(
                  fontSize: 24,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
            footer: Row(
              children: <Widget>[
                Text(
                  pm.distance.toString(),
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                pm.onlineIcon,
              ],
            ),
            child: Hero(
              tag: '$i message',
              child: Card(
                child: Container(
                  width: 130,
                  height: 130,
                  //padding: EdgeInsets.all(5),
                  child: Image.asset(
                    '${pm.imageThumbnails.imageThumbnailLocations[1]}',
                    width: 130,
                    height: 130,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          )));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: inkwellFactory(listy),
    );
  }
}
