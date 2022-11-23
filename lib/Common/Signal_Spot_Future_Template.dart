



import 'package:flutter/material.dart';

import 'AppColor.dart';
import 'FontTemplate.dart';

class Tap_For_Premium extends StatelessWidget {
   Tap_For_Premium({
     Key? key,
   required this.CoinImgPNG,
   required this.CoinName,
   required this.Date_Time,
    this.onTap,

   }) : super(key: key);
  String CoinImgPNG;
  String CoinName;
  String Date_Time;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
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
                      child: Image(
                        image: AssetImage(
                            CoinImgPNG),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AppFontTemplate(
                          text: CoinName,
                          SizeofFont: 18,
                          textcolor: Colors.black,
                          WeightofFont: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        AppFontTemplate(
                            text: Date_Time, SizeofFont: 12)
                      ],
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HomeColor.Light,
                        ),
                        child: Center(
                          child: AppFontTemplate(
                            text: "Tap to Join Premium",
                            SizeofFont: 12,
                            textcolor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
