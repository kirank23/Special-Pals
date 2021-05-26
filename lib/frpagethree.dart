import 'package:flutter/material.dart';
import 'owl.dart';
import 'giraffe.dart';
import 'zebra.dart';

class FrthreePage extends StatefulWidget {

  @override
  _FrthreePageState createState() => _FrthreePageState();
}

class _FrthreePageState extends State<FrthreePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/fr3.jpg'),
                fit: BoxFit.cover
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 200),
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OwlPage()));
                    },
                    child: Container(
                      child: Image(image: AssetImage('assets/owl.png'),height: 120),
                    ),
                  ),
                ],
              ),
              Row(children: <Widget>[
                SizedBox(width: 40),
                Text('Owl', style: TextStyle(
                  fontFamily: 'Nunito', color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,
                ),),
              ],),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 2,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ZebraPage()));
                    },
                    child: Container(
                      child: Image(image: AssetImage('assets/zebra.png'),height: 240),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GiraffePage()));
                    },
                    child: Container(
                      child: Image(image: AssetImage('assets/giraffe.png'),height: 340),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 80),
                  Text('Zebra', style: TextStyle(fontFamily: 'Nunito', color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),),
                  SizedBox(width: 90),
                  Text('Giraffe', style: TextStyle(fontFamily: 'Nunito', color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}