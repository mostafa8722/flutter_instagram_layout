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
  int _currentPageIndex = 0;
  final Map<String , Widget> _page =<String,Widget>
  {
    "home" : new HomePage(),
    "search" : new SearchPage(),
    "add" : new AddPage(),
    "fav" : new FavoritePage(),
    "profile" : new ProfilePage(),
  };

  final List _pageIndex =[
   new HomePage(),
   new SearchPage(),
   new AddPage(),
   new FavoritePage(),
    new ProfilePage(),
  ];

  void _changePage (String page){
    setState(() {
      _currentPage = page;
    });
  }
  void _changePageIndex(int page){
    setState(() {
      _currentPageIndex = page;
    });
  }

  Widget _bottomBar1 (){
    return new Container(
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
    );
  }

  Widget _bottomBar2 (){
    return    new BottomNavigationBar(items: <BottomNavigationBarItem>
    [
      new BottomNavigationBarItem(icon: new Icon(Icons.home,color: _currentPageIndex==0?Colors.black:Colors.black45,),title:new Text("home",style: TextStyle(color: _currentPageIndex==0?Colors.black:Colors.black45,))),
      new BottomNavigationBarItem(icon: new Icon(Icons.search,color: _currentPageIndex==1?Colors.black:Colors.black45,),title:new Text("search",style: TextStyle(color: _currentPageIndex==1?Colors.black:Colors.black45,))),
      new BottomNavigationBarItem(icon: new Icon(Icons.add,color: _currentPageIndex==2?Colors.black:Colors.black45,),title:new Text("add",style: TextStyle(color: _currentPageIndex==2?Colors.black:Colors.black45,))),
      new BottomNavigationBarItem(icon: new Icon(Icons.favorite,color:_currentPageIndex==3?Colors.black:Colors.black45,),title:new Text("favorite",style: TextStyle(color: _currentPageIndex==3?Colors.black:Colors.black45,))),
      new BottomNavigationBarItem(icon: new Icon(Icons.account_box,color: _currentPageIndex==4?Colors.black:Colors.black45,),title:new Text("profile",style: TextStyle(color: _currentPageIndex==4?Colors.black:Colors.black45,))),
    ],
      onTap: _changePageIndex,
      currentIndex: _currentPageIndex,
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 10,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text("instagram",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

        leading: new Icon(Icons.camera_alt),
        actions: [
          new Padding(padding: EdgeInsets.all(5),child: new Icon(Icons.send),)

        ],
      ),

      body:_pageIndex[_currentPageIndex],
      bottomNavigationBar:
      //_bottomBar1()
      _bottomBar2()

    );
  }

}
