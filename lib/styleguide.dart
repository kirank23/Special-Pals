import 'package:flutter/material.dart';

class AppTheme {

  static const TextStyle display1 = TextStyle(
    fontFamily: 'Nunito',
    color: Colors.black,
    fontSize: 38,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,
  );

  static const TextStyle display2 = TextStyle(
    fontFamily: 'Nunito',
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.1,
  );

  static final TextStyle heading = TextStyle(
    fontFamily: 'PTSans',
    fontWeight: FontWeight.w900,
    fontSize: 36,
    color: Colors.white,
    letterSpacing: 1.2,
  );

  static final TextStyle subHeading = TextStyle(
    inherit: true,
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: Colors.white,
  );
}