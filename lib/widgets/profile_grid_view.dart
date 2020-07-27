import 'package:bordered_text/bordered_text.dart';
import 'package:chat_app/fake_repo/list_of_profiles.dart';
import 'package:chat_app/model/profile_model.dart';
import 'package:chat_app/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomGridView extends StatefulWidget {
  CustomGridView({Key key}) : super(key: key);

  @override
  _CustomGridViewState createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  ScrollController _controller;
  // ignore: unused_element
  _scrollListener() {
    _scrollListener() {
      if (_controller.offset >= _controller.position.maxScrollExtent &&
          !_controller.position.outOfRange) {
        setState(() {});
      }
      if (_controller.offset <= _controller.position.minScrollExtent &&
          !_controller.position.outOfRange) {
        setState(() {});
      }
    }

    _controller.addListener(_scrollListener);
    @override
    // ignore: unused_element
    void initState() {
      _controller = ScrollController();

      super.initState();
    }
  }

  List<ProfileModel> tmp = ListofProfiles.generateDummyList(145);
  InkWell tileFactory(ProfileModel oneModel, int i) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilePage(
            profileModel: oneModel,
          ),
        ),
      ),
      child: GridTile(
          header: BorderedText(
            strokeColor: Colors.blue,
            strokeWidth: 2.5,
            child: Text(
              tmp[i].displayName,
              style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          footer: Row(
            children: <Widget>[
              Text(
                tmp[i].distance.toString(),
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                width: 70,
              ),
              tmp[i].onlineIcon,
            ],
          ),
          child: Hero(
            tag: tmp[i].displayName,
            child: Card(
              child: Container(
                width: 130,
                height: 130,
                //padding: EdgeInsets.all(5),
                child: Image.asset(
                  '${tmp[i].imageThumbnails.imageThumbnailLocations[1]}',
                  width: 130,
                  height: 130,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )),
    );
  }

  List<Widget> appTileToList(List<ProfileModel> tempor) {
    List<Widget> wl = new List<Widget>();
    for (var i = 0; i < tempor.length; i++) {
      wl.add(tileFactory(tempor[i], i));
    }
    return wl;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        controller: _controller,
        //padding: EdgeInsets.all(14),
        //itemBuilder: (BuildContext context, int i) {}));
        children: appTileToList(tmp),
      ),
    );
  }
}
