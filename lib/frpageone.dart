import 'package:flutter/material.dart';
import 'lion.dart';
import 'toucan.dart';
import 'armadillo.dart';

class FronePage extends StatefulWidget {

  @override
  _FronePageState createState() => _FronePageState();
}

class _FronePageState extends State<FronePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/fr1.jpg'),
                  fit: BoxFit.cover
                ),
            ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 14,),
            Text('Tap us to know more.', style: TextStyle(
              fontFamily: 'NunitoSans', color: Colors.white.withOpacity(0.9), fontSize: 28, fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 58,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ToucanPage()));
              },
              child: Container(
                child: Image(image: AssetImage('assets/toucan.png'),height: 140),
              ),
            ),
            Text('Toucan', style: TextStyle(
              fontFamily: 'Nunito', color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 74,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LionPage()));
              },
              child: Container(
                child: Image(image: AssetImage('assets/lion.png'),height: 250, width: 420,),
              ),
            ),
            Text('Lion', style: TextStyle(
              fontFamily: 'Nunito', color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 1),
            Row(
              children: <Widget>[
                SizedBox(width: 18,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ArmadilloPage()));
                  },
                  child: Container(
                    child: Image(image: AssetImage('assets/armadillo.png'),height: 118),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 46),
                Text('Armadillo', style: TextStyle(fontFamily: 'Nunito', color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),),
                SizedBox(width: 75),
                Text('Swipe -->', style: TextStyle(fontFamily: 'Nunito', color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold,),),
              ],
            ),
          ],
        ),
        ),
      ),
    );

  }
}