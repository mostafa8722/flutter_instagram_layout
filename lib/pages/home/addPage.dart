import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => AddPageState();

}

class AddPageState extends State<AddPage>{
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
            new Text("add page",style: TextStyle(color: Colors.white),)
          ],
        )
        ,
      ),
    );
  }

}