import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:audioplayers/audio_cache.dart';

class GiraffePage extends StatefulWidget {

  @override
  _GiraffePageState createState() => _GiraffePageState();
}

class _GiraffePageState extends State<GiraffePage> {
  @override
  Widget build(BuildContext context) {

    final List<Widget> steps = [
      _step0(),
      _step1(),
      _step2(),
    ];

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Row(
            children: <Widget>[
              SizedBox(width: 20,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, size: 35, color: Colors.black54,),
              ),
              SizedBox(width: 285,),
              LikeButton(size: 35,),
            ],
          ),
          SizedBox(height: 25,),
          Text('Giraffe', style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35, fontFamily: 'Nunito'
          ),),
          SizedBox(height: 10,),
          Text('Giraffe moms give birth to \n              one baby.', style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Nunito'
          ),),
          SizedBox(height: 20,),
          Container(
            child: Image(image: AssetImage('assets/giraffe.png'),height: 250, width: 420,),
          ),
          SizedBox(height: 25,),
          Row(children: <Widget>[
            SizedBox(width: 50,),
            InkWell(
              onTap: (){
                plyr.play('Giraffe.mp3');
              },
              child: Container(
                width: 70,
                height: 50,
                color: Colors.deepOrangeAccent,
                child: Icon(Icons.music_note, color: Colors.white, size: 36,),
              ),
            ),
            SizedBox(width: 70,),
            Text(
              'Play Sound',style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'NunitoSans'
            ),
            ),
          ],),
          SizedBox(height: 25,),
          Text(
            'A Giraffe makes a bleating sound.',style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22, fontFamily: 'Nunito'
          ),
          ),
          SizedBox(height: 25,),
          ConstrainedBox(
            constraints: BoxConstraints.loose(Size(350, 170)),
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return steps[index];
              },
              itemCount: 3,
              itemHeight: 170,
              itemWidth: 350,
              layout: SwiperLayout.TINDER,
              control: SwiperControl(color: Colors.black),
              pagination: SwiperPagination(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _step0(){
  return Container(
    height: 170,
    width: 350,
    color: Colors.deepOrangeAccent[100],
    child:  Center(
      child: Text('Giraffes are the tallest \n mammals on Earth.', style: TextStyle( fontWeight: FontWeight.w600,fontFamily: 'NunitoSans', fontSize: 18),),
    ),
  );
}

Widget _step1(){
  return Container(
    height: 170,
    width: 350,
    color: Colors.deepOrangeAccent[100],
    child:  Center(
      child: Text("They can run as fast as 35 miles \n an hour over short distances.", style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'NunitoSans', fontSize: 18),),
    ),
  );
}

Widget _step2(){
  return Container(
    height: 170,
    width: 350,
    color: Colors.deepOrangeAccent[100],
    child:  Center(
      child: Text("A giraffe's neck is too short \n to reach the ground.", style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'NunitoSans', fontSize: 18),),
    ),
  );
}

AudioCache plyr = AudioCache();