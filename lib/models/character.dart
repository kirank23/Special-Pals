import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

  Character({this.name, this.imagePath, this.description, this.colors});
}

List characters = [
  Character(
      name: "Jack",
      imagePath: "assets/panda.png",
      description:
      "Jack, the red panda is slightly larger than a domestic cat with a bear-like body and thick russet fur. Red pandas are very skillful and acrobatic animals that predominantly stay in trees. \t\t\t\n\n",
      colors: [Color(0xFFFF977C), Colors.grey]
  ),
  Character(
      name: "Bevis",
      imagePath: "assets/Bevis.png",
      description:
      "Bevis, the beaver is a large, primarily nocturnal, semiaquatic rodent. Beavers are known for their natural trait of building dams on rivers and streams. \t\t\t\n\n",
      colors: [Color(0xFFFF977C), Colors.grey]
  ),
];