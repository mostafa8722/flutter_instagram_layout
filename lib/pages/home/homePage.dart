import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageState();

}

class HomePageState extends State<HomePage>{


  Widget _topStories(){
    return   new Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        new Text("stories"),
        new Row(
          children: [
            new Text("view all"),
            new Icon(Icons.arrow_right)
          ],
        )
      ],
    );
  }
  Widget _stories(){
    return   new Expanded(child:
    new SizedBox(
      height: 100,
      child:
      new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
          return  new Stack(
           alignment: Alignment.topLeft,
           children: [
             new Container(
               height: 50,
               width: 50,
               margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
               decoration: new BoxDecoration(
                   shape: BoxShape.circle,
                   image: DecorationImage(
                       fit: BoxFit.cover,
                       image: new NetworkImage("https://avatars.githubusercontent.com/u/34749049?s=400&u=a569cb5f56d29d735afb4c172f49bf996a7e468f&v=4")
                   )
               ),
             ),
             index!=0 ?
                 new Container()
                 :
                 new Positioned(
                     right:0,
                     top:30,
                     child:
                     new CircleAvatar(
                       radius: 10.0,
                       backgroundColor: Colors.blueAccent,
                       child: new Icon(
                         Icons.add,
                         size: 14,
                         color: Colors.white,
                       ),
                     )
                 )
           ],
         );
        }

        ,

      ),
    )
    );
  }
  Widget instaPost (){
    return new Column(
      children: [
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Row(
              children: [
                new SizedBox(width: 1,),
                new Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                           image: new NetworkImage("https://avatars.githubusercontent.com/u/616428?s=100&v=4")
                      )
                  ),
                ),
                new SizedBox(width: 10,),
                new Text("mostafa nazarband")
              ],
            ),

            new IconButton(icon: new Icon(Icons.more_vert_outlined), onPressed: null)
          ],
        ),


        new Row(
          children: [
            new Expanded(child: Image.network(
                "https://dkstatics-public.digikala.com/digikala-adservice-banners/8582a31fbd8b879c9decc7d8c9982a4fe93a6ca5_1647461983.jpg?x-oss-process=image/quality,q_95"
            ,fit: BoxFit.cover,
            ),
            ),
          ],
        ),

        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Row(
              children: [
                new Padding(padding:const EdgeInsets.fromLTRB(5,10,5 , 10) ,child: new IconButton(icon: new Icon(Icons.favorite_border), onPressed: null),),
                new Padding(padding:const EdgeInsets.fromLTRB(0,10,0 , 10) ,child: new IconButton(icon: new Icon(Icons.mode_comment_outlined), onPressed: null),),
                new Padding(padding:const EdgeInsets.fromLTRB(5,10,5 , 10) ,child: new IconButton(icon: new Icon(Icons.send), onPressed: null),),
              ],
            ),
            new Padding(padding:const EdgeInsets.fromLTRB(5,10,5 , 10) ,child: new IconButton(icon: new Icon(Icons.bookmark_border), onPressed: null),)
          ],

        ),

        new Row(
          children: [

            new Text("علی و رضا و 245 نفر دیگر پسندیدند",style: TextStyle(fontFamily: "Vazir"),)
          ],
        ),
        new SizedBox(height: 10,),
        new Row(
          children: [
            new Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: new NetworkImage("https://avatars.githubusercontent.com/u/34749049?s=400&u=a569cb5f56d29d735afb4c172f49bf996a7e468f&v=4")

                  )
              ),
            ),

    new Expanded(
    child:
    new Padding(
    child: new TextField(
      decoration: new InputDecoration(
          border: InputBorder.none,
          hintText: "اضافه کردن یک نظر ...",
          hintStyle: TextStyle(fontWeight: FontWeight.w500)
      ),
    ),
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    )

    ),



          ],
        ),
       new SizedBox(height: 5,),
       new Row(
         children: [
           new Expanded(
               child:
               new Container(
                 height: 0.5,
                 color: Colors.black12,
               )
           )
         ],
       ),
        new SizedBox(height: 5,)
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      new ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 50,
        itemBuilder: (context,index){
          return  (index==0?
              new SizedBox(
                height: 100,
                child: new Column(
                  children: [
                    _topStories(),
                    _stories()
                  ],
                ),
              )
              :
          instaPost()

          );
        }

        ,

      );

  }

}