// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testt/widgets/drawer_text.dart';
import 'package:testt/widgets/purple_button.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(250)),
      child: Drawer(
        child: Container(
          width: 295,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(50))),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 119,
                  width: 119,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/images.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              DrawerTexts(text: "Profile"),
              DrawerTexts(text: "Privacy policy"),
              DrawerTexts(text: "Terms"),
              Container(
                //purple Container with E
                alignment: Alignment(-0.8, 0),
                width: 51,
                height: 30,
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(163, 95, 233, 1), width: 4),
                    borderRadius: BorderRadius.circular(18)),
                child: SizedBox(
                  height: 16,
                  width: 15,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(163, 95, 233, 1),
                    child: Text(
                      "E",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'ACaslonPro',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              DrawerTexts(text: "Mode"),
              PurpleButton(text: "Logout", width: 194, height: 52),
              Expanded(
                child: Align(
                  alignment: Alignment(-0.8, 0.5),
                  child: SizedBox(
                    height: 62,
                    width: 230,
                    child: Text(
                      "Copyright © 2021 NetFarmy All right reserved.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ACaslonPro',
                          fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
