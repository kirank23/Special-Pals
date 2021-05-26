import 'package:flutter/material.dart';
import 'quiz.dart';

class AnimalQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AnimalQuizState();
  }
}

class AnimalQuizState extends State<AnimalQuiz>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Time"),
        backgroundColor: Colors.pinkAccent[200],
      ),
      body: Container(
        margin: const EdgeInsets.all(15.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: startQuiz,
                child: Text("Quiz",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            )
          ],
        ),
      ),


    );
  }

  void startQuiz(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>  Quiz()));
    });
  }
}