import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'FontTemplate.dart';
class Home_Container_Template extends StatelessWidget {
  Home_Container_Template({Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.graphImagePath,
  required this.amount,
  required this.percent
  }) : super(key: key);

  Image? image;
  String title;
  String subtitle;
  String graphImagePath;
  String amount;
  double percent;
  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 15,right: 15,top: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 0),
            )
          ],
          color: Colors.white
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(


              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: CircleAvatar(
                    radius: 20.0,
                    child: ClipRRect(
                      child: image,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppFontTemplate(text: title, SizeofFont: 15,textcolor: Colors.black,),

                    AppFontTemplate(text: subtitle, SizeofFont: 14,textcolor: Colors.grey,),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(graphImagePath),

                SizedBox(width: MediaQuery.of(context).size.width*0.06,),

                Padding(
                  padding: const EdgeInsets.only(right: 7.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppFontTemplate(text: amount, SizeofFont: 17,textcolor: Colors.black,),

                      AppFontTemplate(text: "${percent.toString()}%", SizeofFont: 14,
                        textcolor: percent>=0?Colors.green:Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }
}

class Long_Short_Ratio_Template extends StatelessWidget {
   Long_Short_Ratio_Template({Key? key,required this.title,required this.long_count,required this.short_count}) : super(key: key);
   String title;
   String short_count;
   String long_count;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width*0.42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FontTemplate(text: title, SizeofFont: 12,WeightofFont: FontWeight.bold,),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppFontTemplate(text: "Longs", SizeofFont: 10,WeightofFont: FontWeight.bold,),
                  AppFontTemplate(text: long_count, SizeofFont: 12,WeightofFont: FontWeight.bold,)

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 3,
                      width: MediaQuery.of(context).size.width*0.175,
                      color: Colors.green,
                    ),
                    Container(
                      height: 3,
                      width: MediaQuery.of(context).size.width*0.175,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppFontTemplate(text: short_count, SizeofFont: 12,WeightofFont: FontWeight.bold,),
                  AppFontTemplate(text: "Shorts", SizeofFont: 10,WeightofFont: FontWeight.bold,),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dominance_Template extends StatelessWidget {
   Dominance_Template({Key? key,required this.title,required this.subtitile}) : super(key: key);
String title;
String subtitile;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width*0.42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppFontTemplate(text: title, SizeofFont: 12,WeightofFont: FontWeight.bold,),
              AppFontTemplate(text: subtitile, SizeofFont: 16,WeightofFont: FontWeight.bold),

            ],
          ),
        ),
      ),
    );
  }
}

