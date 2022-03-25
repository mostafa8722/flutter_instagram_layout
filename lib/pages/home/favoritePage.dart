import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => FavoritePageState();

}

class FavoritePageState extends State<FavoritePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.red,
      child: new Center(
        child:
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text("favorite page",style: TextStyle(color: Colors.white),)
          ],
        )
        ,
      ),
    );
  }

}