// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class DrawerTexts extends StatelessWidget {
  String text;
  DrawerTexts({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Text(
        text,
        // ignore: prefer_const_constructors
        style: TextStyle(
            fontFamily: 'ACaslonPro',
            fontSize: 22,
            color: Color.fromRGBO(38, 52, 65, 1),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
