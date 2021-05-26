import 'package:flutter/material.dart';

class StoryThree extends StatefulWidget {
  @override
  _StoryThreeState createState() => _StoryThreeState();
}

class _StoryThreeState extends State<StoryThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(35),
        child: Column(
          children: <Widget>[
            Text('Grasslands', style: TextStyle(
              fontFamily: 'Nunito', color: Colors.black, fontWeight: FontWeight.w600, fontSize: 28,
              wordSpacing: 5,
            ),),
            SizedBox(height: 25,),
            Text("Is this the same country which people routinely trash when discussing about tourism? Sam seemed awestruck by the beauty all around. Yeah that’s the question running through my head as well. \n\nGinny had heard the same from her friends back in Auckland. From the greenery to the valley, from the wildlife safaris to the unspoilt beaches, this place is paradise rediscovered. Yes it truly feels like. God! They scared us to death while departing. Thankfully we kept our foot down. \n\nOver the last few days, they had realized that this place was nothing like what had been described by their friends. Who knows; maybe they assumed that we were going to a concentration camp rather than an adventure trip. Both of them had a hearty laugh. \n\nSam and Ginny were not your regular couple who meet in a college and fall in love. They actually never worked in an office at all. Whether it was rock climbing, rappelling, bungee jumping, paragliding or any other adventure sport – both of them were always game for challenges. And it was during one of these adventures that they happened to meet. Are you ready to take the plunge? I am really scared Sam. What if the wire snaps in mid – air? Ginny seemed like a nervous wreck. \n\nWhat’s the big deal? Then you will die and your ghost will terrorize me for the rest of my life. Sam looked at her with a grin writ large on his face.I hate you. I am going back. She almost started to walk back when he pulled her arm.Don’t worry. Nothing will happen to you. Have faith in me. It’s just a matter of a couple of seconds and it’ll all be over.",
              style: TextStyle(color: Colors.black, fontFamily: 'NunitoSans',fontWeight: FontWeight.w400, fontSize: 24,
                wordSpacing: 3,
              ),),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}