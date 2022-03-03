// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:testt/widgets/button_widget.dart';
import 'package:testt/widgets/drawer.dart';
import 'package:testt/widgets/purple_button.dart';

class HomeScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                //Drawer yellow container
                alignment: Alignment(-0.5, -0.1),
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: ShapeDecoration(
                    color: Color.fromRGBO(239, 210, 61, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.elliptical(50, 300),
                            bottomRight: Radius.elliptical(600, 1000)))),
                child: IconButton(
                  //Drawer Icon
                  icon: Icon(
                    Icons.dehaze,
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  color: Colors.white,
                ),
              ),
              Expanded(
                //Image NetFarma
                child: Align(
                  alignment: Alignment(-0.8, -1),
                  child: Image(
                    alignment: Alignment.topCenter,
                    image: AssetImage("images/logo.png"),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ),
              ),
            ],
          ),
          ButtonWidget(
            text: "Register",
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWidget(text: "About Us"),
              ButtonWidget(text: "Contact")
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWidget(
                text: "Investement Guide",
              ),
              ButtonWidget(text: "Centers")
            ],
          ),
          SizedBox(
            height: 50,
          ),
          PurpleButton(
            text: "Invite someone",
            width: 335,
            height: 56,
          )
        ],
      ),
    );
  }
}
