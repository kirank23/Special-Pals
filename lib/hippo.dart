import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:audioplayers/audio_cache.dart';

class HippoPage extends StatefulWidget {

  @override
  _HippoPageState createState() => _HippoPageState();
}

class _HippoPageState extends State<HippoPage> {
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
          Text('Hippo', style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35, fontFamily: 'Nunito'
          ),),
          SizedBox(height: 10,),
          Text('Hippo moms give birth to \n              one baby.', style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Nunito'
          ),),
          SizedBox(height: 20,),
          Container(
            child: Image(image: AssetImage('assets/hippo.png'),height: 250, width: 420,),
          ),
          SizedBox(height: 25,),
          Row(children: <Widget>[
            SizedBox(width: 50,),
            InkWell(
              onTap: (){
                plyr.play('Hippopotamus.mp3');
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
            'A Hippo makes a wheezing sound.',style: TextStyle(
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
      child: Text("The name Hippopotamus comes \n from the Ancient Greek 'river horse'.", style: TextStyle( fontWeight: FontWeight.w600,fontFamily: 'NunitoSans', fontSize: 18),),
    ),
  );
}

Widget _step1(){
  return Container(
    height: 170,
    width: 350,
    color: Colors.deepOrangeAccent[100],
    child:  Center(
      child: Text("An adult Hippo needs to resurface \n every 3 – 5mins to breathe.", style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'NunitoSans', fontSize: 18),),
    ),
  );
}

Widget _step2(){
  return Container(
    height: 170,
    width: 350,
    color: Colors.deepOrangeAccent[100],
    child:  Center(
      child: Text('Hippos will travel on land \n for up to 10km to feed. ', style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'NunitoSans', fontSize: 18),),
    ),
  );
}

AudioCache plyr = AudioCache();