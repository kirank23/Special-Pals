import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:special_pals/delayed_animation.dart';
import 'package:special_pals/pages/character_listing_screen.dart';
import 'intro.dart';


void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder( builder: (context) => Scaffold(
          backgroundColor: Color(0xFFFF977C),
          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 40.0),
                AvatarGlow(
                  endRadius: 90,
                  duration: Duration(seconds: 2),
                  glowColor: Colors.white,
                  repeat: true,
                  showTwoGlows: true,
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
                SizedBox(height: 20),
                DelayedAnimation(
                  child: Text(
                    "Hi There!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        fontFamily: 'Nunito',
                        color: color),
                  ),
                  delay: delayedAmount + 1000,
                ),
                DelayedAnimation(
                  child: Text(
                    "I'm Jack",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        fontFamily: 'Nunito',
                        color: color),
                  ),
                  delay: delayedAmount + 2000,
                ),
                SizedBox(
                  height: 75.0,
                ),
                DelayedAnimation(
                  child: Text(
                    "Your New Personal",
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: color, fontFamily: 'PTSans'),
                  ),
                  delay: delayedAmount + 3000,
                ),
                DelayedAnimation(
                  child: Text(
                    "Learning Companion",
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: color, fontFamily: 'PTSans'),
                  ),
                  delay: delayedAmount + 3000,
                ),
                SizedBox(
                  height: 100.0,
                ),
                DelayedAnimation(
                  child: GestureDetector(
                    onTapDown: _onTapDown,
                    onTapUp: _onTapUp,
                    child: Transform.scale(
                      scale: _scale,
                      child: _animatedButtonUI,
                    ),
                  ),
                  delay: delayedAmount + 4000,
                ),
                SizedBox(height: 50.0,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterListingScreen()));
                  },
                  child: DelayedAnimation(
                    child: Text(
                      "learn more about me".toUpperCase(),
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          color: color),
                    ),
                    delay: delayedAmount + 5000,
                  ),),
              ],
            ),
          )
      ),
      ),
    );
  }

  Widget get _animatedButtonUI => Builder( builder: (context) => Container(
    height: 60,
    width: 270,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      color: Colors.white,
    ),
    child: InkWell(
      onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => IntroPage()));
      },
      child: Center(
      child: Text(
        'Hi Jack!',
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: 'NunitoSans',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),),
    ),
  );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}