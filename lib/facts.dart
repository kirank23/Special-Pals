import 'package:flutter/material.dart';
import 'frpageone.dart';
import 'frpagetwo.dart';
import 'frpagethree.dart';

class FactPage extends StatefulWidget {

  @override
  _FactPageState createState() => _FactPageState();
}

class _FactPageState extends State<FactPage> {

  List<Widget> pages=[FronePage(),FrtwoPage(),FrthreePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, position) => pages[position],
      ),
    );
  }
}