import 'package:flutter/material.dart';
import 'package:testt/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1)),
      builder: (context, child) => child = SafeArea(child: child!),
      home: HomeScreen(),
    );
  }
}
