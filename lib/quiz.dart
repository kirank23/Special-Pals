import 'package:flutter/material.dart';
import 'dashboard.dart';


var finalScore = 0;
var questionNumber = 0;
var quiz = AnimalQuiz();

class AnimalQuiz{
  var images = [
    "li", "be", "ti", "ow", "ra"
  ];


  var questions = [
    "This animal is the king of the jungle.",
    "_________ loves to eat honey.",
    "_________ has orange and\nblack stripes.",
    " \tA nocturnal animal with \n  some really big eyes.",
    "This animal has white fur.",
  ];


  var choices = [
    ["Tiger", "Sheep", "Lion", "Monkey"],
    ["Cat", "Elephant", "Bear", "Horse"],
    ["Mouse", "Tiger", "Elephant", "Donkey"],
    ["Spider", "Cow", "Hawk", "Owl"],
    ["Tiger", "Zebra", "Giraffe", "Rabbit"],
  ];


  var correctAnswers = [
    "Lion", "Bear", "Tiger", "Owl", "Rabbit",
  ];
}

class Quiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return QuizState();
  }
}

class QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(

          body: Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(20.0)),

                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                            fontSize: 24.0,
                          fontWeight: FontWeight.w700
                        ),),

                      Text("Score: $finalScore",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                            fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                        ),)
                    ],
                  ),
                ),


                //image
                Padding(padding: EdgeInsets.all(10.0)),

                Image.asset(
                  "assets/${quiz.images[questionNumber]}.jpg",
                  height: 380,
                ),

                Padding(padding: EdgeInsets.all(10.0)),

                Text(quiz.questions[questionNumber],
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 22.0,
                  ),),

                Padding(padding: EdgeInsets.all(10.0)),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    //button 1
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                    child: MaterialButton(
                      height: 50,
                      minWidth: 120.0,
                      color: Colors.blue[600],
                      onPressed: (){
                        if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]){
                          debugPrint("Correct");
                          finalScore++;
                        }else{
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(quiz.choices[questionNumber][0],
                        style: TextStyle(
                            fontFamily: 'NunitoSans',
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),
                    ),


                    //button 2
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                    child: MaterialButton(
                      height: 50,
                      minWidth: 120.0,
                      color: Colors.blue[600],
                      onPressed: (){

                        if(quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber]){
                          debugPrint("Correct");
                          finalScore++;
                        }else{
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(quiz.choices[questionNumber][1],
                        style: TextStyle(
                            fontFamily: 'NunitoSans',
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),
                    ),
                  ],
                ),

                Padding(padding: EdgeInsets.all(10.0)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    //button 3
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: MaterialButton(
                        height: 50,
                        minWidth: 120.0,
                        color: Colors.blue[600],
                        onPressed: (){

                          if(quiz.choices[questionNumber][2] == quiz.correctAnswers[questionNumber]){
                            debugPrint("Correct");
                            finalScore++;
                          }else{
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: Text(quiz.choices[questionNumber][2],
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontSize: 20.0,
                              color: Colors.white
                          ),),
                      ),
                    ),

                    //button 4
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child:  MaterialButton(
                        height: 50,
                        minWidth: 120.0,
                        color: Colors.blue[600],
                        onPressed: (){

                          if(quiz.choices[questionNumber][3] == quiz.correctAnswers[questionNumber]){
                            debugPrint("Correct");
                            finalScore++;
                          }else{
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: Text(quiz.choices[questionNumber][3],
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontSize: 20.0,
                              color: Colors.white
                          ),),
                      ),

                    ),
                  ],
                ),

                Padding(padding: EdgeInsets.all(15.0)),

                SizedBox(height: 10,),

                  Container(
                  alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      child: MaterialButton(
                        minWidth: 240.0,
                        height: 50.0,
                        color: Colors.red,
                        onPressed: resetQuiz,
                        child: Text("Quit",
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontSize: 20.0,
                              color: Colors.white
                          ),),
                      ),
                      borderRadius: BorderRadius.circular(75),
                    ),

              ),
              ],
            ),
          ),

        )
    );
  }

  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }



  void updateQuestion(){
    setState(() {
      if(questionNumber == quiz.questions.length - 1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Summary(score: finalScore,)));

      }else{
        questionNumber++;
      }
    });
  }
}


class Summary extends StatelessWidget{
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[

                ],
              ),

              Text("Final Score: $score",
                style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.w500,
                    fontSize: 35.0
                ),),

              Padding(padding: EdgeInsets.all(30.0)),

              ClipRRect(
                borderRadius: BorderRadius.circular(25),
              child: MaterialButton(
                height: 50,
                color: Colors.red,
                onPressed: (){
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                child: Text("Reset Quiz",
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 24.0,
                      color: Colors.white
                  ),),),
              ),

              
              SizedBox(height: 40,),

              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: MaterialButton(
                  height: 50,
                  color: Colors.green,
                  onPressed: (){
                    questionNumber = 0;
                    finalScore = 0;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
                  },
                  child: Text("Dashboard",
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 24.0,
                        color: Colors.white
                    ),),),
              ),
            ],
          ),
        ),


      ),
    );
  }


}