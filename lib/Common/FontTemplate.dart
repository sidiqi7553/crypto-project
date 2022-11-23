import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appcolor.dart';

class FontTemplate extends StatelessWidget {
   FontTemplate({Key? key,required this.text,this.textcolor,required this.SizeofFont,this.WeightofFont}) : super(key: key);
String text;
final textcolor;
double SizeofFont;
final WeightofFont;
  @override
  Widget build(BuildContext context) {
    return Text(

      text,style: GoogleFonts.poppins (
      textStyle: TextStyle(

        color: textcolor,
        fontSize: SizeofFont,
          fontWeight: WeightofFont,

      )
    ),);
  }
}

class AppFontTemplate extends StatelessWidget {
  AppFontTemplate({Key? key,required this.text,this.textcolor,required this.SizeofFont,this.WeightofFont}) : super(key: key);
  String text;
  final textcolor;
  double SizeofFont;
  final WeightofFont;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 3,
      text,style: GoogleFonts.poppins(
        textStyle: TextStyle(

          color: textcolor,
          fontSize: SizeofFont,
          fontWeight: WeightofFont,

        )
    ),);
  }
}

class percent extends StatelessWidget {
   percent({Key? key, required this.text}) : super(key: key);
String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 35,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1,color: Colors.grey)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style: TextStyle(fontSize: 10),),

        ],
      ),
    );
  }
}

