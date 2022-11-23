
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'FontTemplate.dart';

class Banners_Template extends StatelessWidget {
   Banners_Template({Key? key,
     required this.containerColor,
     required this.title,
     required this.subtitle,
     required this.buttontext,
     required this.buttontextcolor,
     required this.SvgPic,
     required this.onTap,
   }) : super(key: key);
 Color containerColor;
 String title;
 String subtitle;
 String buttontext;
 Color buttontextcolor;
 String SvgPic;
 VoidCallback onTap;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: kElevationToShadow[6],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 22.0, top: 25, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width*0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppFontTemplate(
                    text: title,
                    SizeofFont: 12,
                    textcolor: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: AppFontTemplate(
                      text: subtitle,
                      SizeofFont: 15,
                      textcolor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: InkWell(
                      onTap:onTap,
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppFontTemplate(
                              text: buttontext,
                              SizeofFont: 10,
                              textcolor: buttontextcolor,
                              WeightofFont: FontWeight.w600,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SvgPicture.asset(
              SvgPic,
                  width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
