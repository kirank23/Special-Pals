import 'package:flutter/material.dart';
import 'matchup.dart';
import 'facts.dart';


class Puzzle extends StatefulWidget {

  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300, width: 450, color: Color(0xFF5DDEE8),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 35,),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 114),
                        Text('Puzzles' , style: TextStyle(color: Colors.white, fontFamily: 'LoveYaLikeASister', fontSize: 46),),
                      ],
                    ),
                    Image(
                        height: 200,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                        image: AssetImage('assets/puzz.png')
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            child: Row(
              children: <Widget>[
                Image(
                    height: 190,
                    width: 210,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    image: AssetImage('assets/panda.png')
                ),
                Column(
                  children: <Widget>[
                    Text("Solve!", style: TextStyle(color: Colors.black ,fontFamily: 'Nunito', fontSize: 35),),
                    Text("Puzzles.", style: TextStyle(color: Colors.black ,fontFamily: 'Nunito', fontSize: 35),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Match()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                padding: EdgeInsets.all(10),
                color: Color(0xFF3A3FBD),
                width: 350,
                height: 130,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image(image: AssetImage('assets/match.jpg')),
                    ),
                    SizedBox(width: 42),
                    Text('Match Up',style: TextStyle(color: Colors.white,fontFamily: 'LoveYaLikeASister', fontSize: 32),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FactPage()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                padding: EdgeInsets.all(10),
                color: Color(0xFF76BE1A),
                width: 350,
                height: 130,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image(image: AssetImage('assets/animal.jpg')),
                    ),
                    SizedBox(width: 23),
                    Text('Animals',style: TextStyle(color: Colors.white,fontFamily: 'LoveYaLikeASister', fontSize: 32),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
