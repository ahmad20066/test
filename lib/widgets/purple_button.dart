// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PurpleButton extends StatelessWidget {
  String text;
  double width;
  double height;
  PurpleButton({required this.text, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(163, 95, 233, 1),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(179, 120, 215, 0.5), blurRadius: 20),
            ]),
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 15,
                fontFamily: 'ACaslonPro',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400),
          ),
        ));
  }
}
