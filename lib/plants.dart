import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';

class ColorGameOne extends StatefulWidget {
  ColorGameOne({Key key}) : super(key: key);

  createState() => ColorGameOneState();
}

class ColorGameOneState extends State<ColorGameOne> {
  /// Map to keep track of score
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    '🌰': Colors.brown,
    '🌻': Colors.yellow,
    '🌷': Colors.pinkAccent,
    '🌵': Colors.green,
    '🌹': Colors.red,
  };

  // Random seed to shuffle order of items.
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('            Score ${score.length} / 5',
            style: TextStyle(fontSize: 22, fontFamily: 'Nunito', fontWeight: FontWeight.w500 ),),
          backgroundColor: Colors.purpleAccent[700]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent[700],
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: choices.keys.map((emoji) {
                return Draggable<String>(
                  data: emoji,
                  child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                  feedback: Emoji(emoji: emoji),
                  childWhenDragging: Emoji(emoji: ''),
                );
              }).toList()),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
              ..shuffle(Random(seed)),
          )
        ],
      ),
    );
  }

  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[emoji] == true) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(35),child: Container(
            color: Colors.transparent,
            child: Text('Correct!', style: TextStyle(fontSize: 22, fontFamily: 'Nunito', fontWeight: FontWeight.w500 , color: Colors.black),),
            alignment: Alignment.center,
            height: 80,
            width: 140,
          ),
          );
        } else {
          return ClipRRect(
            borderRadius: BorderRadius.circular(35), child: Container(color: choices[emoji], height: 80, width: 150),
          );
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
          plyr.play('Bell.mp3');
        });
      },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 90,
            padding: EdgeInsets.all(10),
            child: Text(
              emoji,
              style: TextStyle(color: Colors.black, fontSize: 50),
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}

AudioCache plyr = AudioCache();