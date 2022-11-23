import 'dart:async';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/AppColor.dart';
import 'Onboard/On_Board.dart';

class Splash_2 extends StatefulWidget {
  const Splash_2({Key? key}) : super(key: key);

  @override
  State<Splash_2> createState() => _Splash_2State();
}

class _Splash_2State extends State<Splash_2> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Onbording()));
    }
    );
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image(image: AssetImage('Assets/Splash_Images/Black and Red Minimalist and Luxury Cryptocurrency News Your Story.png'),
                fit: BoxFit.fill,),),

          Padding(
            padding: const EdgeInsets.only(left: 28.0, bottom: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Welcome TO',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 32)),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Image(
                          image: AssetImage('Assets/Splash_Images/hand.png'),
                          width: 30,
                          height: 30,
                        )
                      ],
                    ),
                  ),
// SizedBox(height: 40,),
                  Container(
                    child: Text(
                      'CRYPTO',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: AppColor.yellow)),
                    ),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),

                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text(
                      'The best Crypto Currency Exchange App of this Century for your trading and profit',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: Colors.white,fontSize: 15
                      )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
