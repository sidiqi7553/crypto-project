import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Splash_2.dart';


class Splash_1 extends StatefulWidget {
  const Splash_1({Key? key}) : super(key: key);

  @override
  State<Splash_1> createState() => _Splash_1State();
}

class _Splash_1State extends State<Splash_1> {
  @override
  Widget build(BuildContext context) {
    Timer (
      Duration(seconds: 3),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Splash_2()));
    }
    );
    return Scaffold(
       body: Column(
         children: [
           Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height,

             child: Column(
               children: [
                 SizedBox(height: 300,),
                 Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
SvgPicture.asset("Assets/Fab_Button_images/FabButton_pic.svg"),
                       SizedBox(width: 7,),
                       Text('CRYPTO GAIN',style: GoogleFonts.uchen(
                         textStyle: TextStyle(
                             fontSize: 25,

                             color: Colors.black),
                       ),),
                     ],
                   ),
                 ),
                 SizedBox(height: 350,),
                 Text('Highly Rated Cryptocurrency Exchange ',style: GoogleFonts.uchen(
                   textStyle: TextStyle(
                       fontSize: 12,

                       color: Colors.black),
                 ),)
               ],
             ),

           ),

         ],
       ),
    );
  }
}
