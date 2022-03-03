// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String text;
  ButtonWidget({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(249, 246, 251, 1),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.11),
                blurRadius: 10,
              )
            ]),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22,
              color: Color.fromRGBO(163, 95, 233, 1),
              fontFamily: 'ACaslonPro',
              fontWeight: FontWeight.w600),
        ));
  }
}
