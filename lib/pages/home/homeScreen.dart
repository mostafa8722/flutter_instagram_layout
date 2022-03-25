import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_instagram/pages/home/favoritePage.dart';
import 'package:flutter_instagram/pages/home/homePage.dart';
import 'package:flutter_instagram/pages/home/profilePage.dart';
import 'package:flutter_instagram/pages/home/searchPage.dart';

import 'addPage.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> HomeState();



}
class HomeState extends State<HomeScreen> {

  String _currentPage = "home";
  final Map<String , Widget> _page =<String,Widget>
  {
    "home" : new HomePage(),
    "search" : new SearchPage(),
    "add" : new AddPage(),
    "fav" : new FavoritePage(),
    "profile" : new ProfilePage(),
  };

  void _changePage (String page){
    setState(() {
      _currentPage = page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 10,
        centerTitle: true,
        backgroundColor: Colors.white10,
        title: new Text("instagram",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        leading: new Icon(Icons.camera_alt),
        actions: [
          new Padding(padding: EdgeInsets.all(5),child: new Icon(Icons.send),)

        ],
      ),

      body:_page[_currentPage],
      bottomNavigationBar:
        new Container(
          height:45,
          color:Colors.yellow,
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child:
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            new IconButton(icon:   new Icon(Icons.home,color: _currentPage=="home"?Colors.black:Colors.black45,),onPressed:(){ _changePage("home");},),
            new IconButton(icon:   new Icon(Icons.search,color: _currentPage=="search"?Colors.black:Colors.black45,),onPressed: (){ _changePage("search");},),
            new IconButton(icon:   new Icon(Icons.add,color: _currentPage=="add"?Colors.black:Colors.black45,),onPressed: (){ _changePage("add");},),
            new IconButton(icon:   new Icon(Icons.favorite,color: _currentPage=="fav"?Colors.black:Colors.black45,),onPressed: (){ _changePage("fav");},),
            new IconButton(icon:   new Icon(Icons.account_box,color: _currentPage=="profile"?Colors.black:Colors.black45,),onPressed: (){ _changePage("profile");},)
            ],
          )
          ,
        ),
    );
  }

}
