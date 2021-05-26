import 'package:flutter/material.dart';

class StoryTwo extends StatefulWidget {
  @override
  _StoryTwoState createState() => _StoryTwoState();
}

class _StoryTwoState extends State<StoryTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(35),
        child: Column(
          children: <Widget>[
            Text('The Tomb', style: TextStyle(
              fontFamily: 'Nunito', color: Colors.black, fontWeight: FontWeight.w600, fontSize: 28,
              wordSpacing: 5,
            ),),
            SizedBox(height: 25,),
            Text("In relating the circumstances which have led to my confinement within this refuge for the demented, I am aware that my present position will create a natural doubt of the authenticity of my narrative. \n\nIt is an unfortunate fact that the bulk of humanity is too limited in its mental vision to weigh with patience and intelligence those isolated phenomena, seen and felt only by a psychologically sensitive few, which lie outside its common experience. \n\nMen of broader intellect know that there is no sharp distinction betwixt the real and the unreal; that all things appear as they do only by virtue of the delicate individual physical and mental media through which we are made conscious of them; but the prosaic materialism of the majority condemns as madness the flashes of super-sight which penetrate the common veil of obvious empiricism. \n\nMy name is Jervas Dudley, and from earliest childhood I have been a dreamer and a visionary. Wealthy beyond the necessity of a commercial life, and temperamentally unfitted for the formal studies and social recreations of my acquaintances, I have dwelt ever in realms apart from the visible world; spending my youth and adolescence in ancient and little-known books, and in roaming the fields and groves of the region near my ancestral home. \n\nI do not think that what I read in these books or saw in these fields and groves was exactly what other boys read and saw there; but of this I must say little, since detailed speech would but confirm those cruel slanders upon my intellect which I sometimes overhear from the whispers of the stealthy attendants around me. It is sufficient for me to relate events without analysing causes. \n\nI have said that I dwelt apart from the visible world, but I have not said that I dwelt alone. This no human creature may do; for lacking the fellowship of the living, he inevitably draws upon the companionship of things that are not, or are no longer, living. Close by my home there lies a singular wooded hollow, in whose twilight deeps I spent most of my time; reading, thinking, and dreaming. Down its moss-covered slopes my first steps of infancy were taken, and around its grotesquely gnarled oak trees my first fancies of boyhood were woven. \n\nWell did I come to know the presiding dryads of those trees, and often have I watched their wild dances in the struggling beams of a waning moon—but of these things I must not now speak. I will tell only of the lone tomb in the darkest of the hillside thickets; the deserted tomb of the Hydes, an old and exalted family whose last direct descendant had been laid within its black recesses many decades before my birth.",
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