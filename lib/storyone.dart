import 'package:flutter/material.dart';

class StoryOne extends StatefulWidget {
  @override
  _StoryOneState createState() => _StoryOneState();
}

class _StoryOneState extends State<StoryOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(35),
        child: Column(
          children: <Widget>[
            Text('The Boatman', style: TextStyle(
              fontFamily: 'Nunito', color: Colors.black, fontWeight: FontWeight.w600, fontSize: 28,
              wordSpacing: 5,
            ),),
            SizedBox(height: 25,),
            Text("Margaret’s brother arrives a little after four, coming up the yard in that heavy way of his, still with sleep on him and hauling two shovels and a pickaxe, the weight of his boots on the gravel as familiar to me as the sound of my own voice in my head or my boat on the water, its old wood moaning among the waves. \n\nI remain at the kitchen table, hunched over a small glass and with a dark refilled bottle beside the flat of my left hand. These past two nights have done for the whiskey, and I am reduced now to more home-grown poisons. But that’s all right; we all have hard tastes here, and we’re well used to the fire. \n\nBeyond the window, the staggered silhouettes of ash trees stand black and dense against the horizon. I drain the glass and pour again, running the alcohol to its brim, the liquid clear and illicit and full, for now, of the early hour, then slide it across the table in anticipation of my brother in-law. \n\nA minute passes, the clock dropping its seconds in clicks, and if Michael seems to linger outside longer than usual I know that it is because he’s looking at the sky, the stars, and listening for the first flute notes of birdsong. Feeling the stillness of a rare morning without breeze. And it's as if the world is waiting. \n\n When he enters, his steps trying to go gentle across the hall’s linoleum, the balance of the stillness shifts. After a moment he fills the doorway and leans against the jamb. Neither of us wants to speak yet, lacking I suppose the necessary words, but also because there’s little left to say beyond expressions of anger, and we’re both too beaten down for that. \n\nI gesture towards the glass, and he takes a couple of paces forward, picks it up in his thick fingers and drinks slowly. I watch him, then help myself to a last long, deep swallow from the bottle.", style: TextStyle(
              color: Colors.black, fontFamily: 'NunitoSans',fontWeight: FontWeight.w400, fontSize: 24,
              wordSpacing: 3,
            ),),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}