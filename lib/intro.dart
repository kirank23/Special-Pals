import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'jack.dart';
import 'dashboard.dart';

class IntroPage extends StatefulWidget {

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xFFFF977C),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 80.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 40),
                  AvatarGlow(
                    endRadius: 35,
                    duration: Duration(seconds: 2),
                    showTwoGlows: true,
                    glowColor: Colors.white,
                    repeat: true,
                    repeatPauseDuration: Duration(seconds: 2),
                    startDelay: Duration(seconds: 1),
                    child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundImage: ExactAssetImage('assets/redpanda.png'),
                          backgroundColor: Colors.grey[100],
                          radius: 50.0,
                        )),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  SizedBox(width: 42),
                  Text(
                    "Nice to meet you!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        fontFamily: 'Nunito',
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
              SizedBox(width: 42),
              Text(
                "What do they call you by?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    fontFamily: 'Nunito',
                    color: Colors.white),
                    ),
                  ],
                ),
              SizedBox(height: 40),
              Container(
                height: 80,
              width: 330.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'They call me..',
                  hintStyle: TextStyle(fontSize: 25.0, color: Colors.white, fontFamily: 'Nunito'),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFF977C)),
                  ),
                ),
                cursorColor: Colors.white,
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                      fontSize: 25.0,
                      height: 2.0,
                      color: Colors.white
                  )
              )
              ),
              SizedBox(height: 200,),
              Container(
                height: 60,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => JackPage()));
                  },
                  child: Center(
                    child: Text(
                      'Take a tour',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'NunitoSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
                },
                child: Text(
                    "Skip anyway".toUpperCase(),
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  ),
            ],
          ),
        )
    );
  }
}