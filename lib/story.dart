import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'storyone.dart';
import 'storytwo.dart';
import 'storythree.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300, width: 450, color: Color(0xFFFF585D),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 35,),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 114),
                        Text('Stories' , style: TextStyle(color: Colors.white, fontFamily: 'LoveYaLikeASister', fontSize: 46),),
                      ],
                    ),
                    Image(
                        height: 200,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                        image: AssetImage('assets/f.png')
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StoryOne()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.deepOrangeAccent[100],
                width: 350,
                height: 130,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24.0),
                      child: Image(image: AssetImage('assets/s1.png'), height: 102,),
                    ),
                    SizedBox(width: 15),
                    Text('The Boatman',style: TextStyle(color: Colors.white,fontFamily: 'LoveYaLikeASister', fontSize: 28),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StoryTwo()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.blue[400],
                width: 350,
                height: 130,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24.0),
                      child: Container(
                        color: Colors.white,
                        height: 110,
                        child: Image(image: AssetImage('assets/s2.png'), height: 100,),
                      ),
                    ),
                    SizedBox(width: 30),
                    Text('The Tomb',style: TextStyle(color: Colors.white,fontFamily: 'LoveYaLikeASister', fontSize: 28),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StoryThree()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent[400],
                width: 350,
                height: 130,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Container(
                        color: Colors.white,
                        height: 110,
                        child: Image(image: AssetImage('assets/s3.png')),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text('Grasslands',style: TextStyle(color: Colors.white,fontFamily: 'LoveYaLikeASister', fontSize: 28),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

