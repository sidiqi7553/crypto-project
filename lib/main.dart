
import 'package:crypto_project/Go_To_Home/Lets_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'dart:ui';
import 'BottomNavigationBar/BottomNavigationBar.dart';
import 'Splash_Screens/Onboard/On_Board.dart';
import 'Splash_Screens/Splash_1.dart';
import 'Splash_Screens/Splash_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Gain',
      theme: ThemeData(

        primarySwatch:Colors.deepPurple,
      ),
      home:  Splash_1(),
    );
  }
}

