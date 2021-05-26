import 'package:flutter/material.dart';

var pageList = [
  PageModel(
      imageUrl: "assets/Learn.png",
      title: "Learn",
      body: "EXPERIENCE THE JOY OF LEARNING",
      titleGradient: gradients[0]),
  PageModel(
      imageUrl: "assets/dream.jpg",
      title: "Draw",
      body: "FEEL THE MAGIC OF DRAWING",
      titleGradient: gradients[1]),
  PageModel(
      imageUrl: "assets/draw.jpg",
      title: "Stories",
      body: "LET'S READ SOME STORIES",
      titleGradient: gradients[2]),
];

List<List<Color>> gradients = [
  [Colors.white, Colors.white70],
  [Colors.white, Colors.white70],
  [Colors.white, Colors.white70],
];

class PageModel {
  var imageUrl;
  var title;
  var body;
  List<Color> titleGradient = [];
  PageModel({this.imageUrl, this.title, this.body, this.titleGradient});
}