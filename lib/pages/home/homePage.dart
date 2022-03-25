import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageState();

}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.green,
      child: new Center(
        child:
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("Home page",style: TextStyle(color: Colors.white),)
          ],
        )
        ,
      ),
    );
  }

}