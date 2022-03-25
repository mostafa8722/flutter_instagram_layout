import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ProfilePageState();

}

class ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.purple,
      child: new Center(
        child:
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("Profile page",style: TextStyle(color: Colors.white),)
          ],
        )
        ,
      ),
    );
  }

}