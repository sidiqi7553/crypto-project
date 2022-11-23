
import 'package:crypto_project/Common/Banners_Template.dart';
import 'package:crypto_project/Common/FontTemplate.dart';
import 'package:crypto_project/FabButton_navigation/Reffral.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/AppColor.dart';
import '../FabButton_navigation/Coin_miner.dart';
import '../FabButton_navigation/Spin_Coupons.dart';

class FabButton extends StatefulWidget {
  const FabButton({Key? key}) : super(key: key);

  @override
  State<FabButton> createState() => _FabButtonState();
}

class _FabButtonState extends State<FabButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Coin_Miner()));
                  },
                  child:
                  Banners_Template(containerColor: Color(0xff702F2F),
                      title: "Coin Mining",
                      subtitle: "Crypto Gainer and Coin Miner",
                      buttontext: "Start Mining",
                      buttontextcolor: Color(0xff702F2F),
                      SvgPic: "Assets/Fab_Button_images/Crypto_miner (1).svg",
                    onTap: () {
                    Spin(context);
                    },),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Spin_Coupons()));
                  },
                  child: Banners_Template(
                      containerColor: Color(0xffF50062),
                      title: "Rewards",
                      subtitle: "Spin Wheel and Win Free Tokens!",
                      buttontext: "Get Tokens",
                      buttontextcolor: Color(0xffF50062),
                      SvgPic: "Assets/Fab_Button_images/wheel-of-fortune 1.svg", onTap: () {
                        // Spin(context);
                        },
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Reffral()));
                  },
                  child: Banners_Template(
                      containerColor: Color(0xffFF59300),
                      title: "Refer and Earn",
                      subtitle: "Refer you Friend and Win Cryptocoins",
                      buttontext: "Refer Now",
                      buttontextcolor: Color(0xffF59300),
                      SvgPic: "Assets/Fab_Button_images/26-referral.svg",
                      onTap: () {
                        Refral(context);
                  },
                  ),
                ),
                Banners_Template(
                    containerColor: Color(0xff9300F5),
                    title: "Rewards",
                    subtitle: "Like, Share and get free coupons",
                    buttontext: "Rewards",
                    buttontextcolor: Color(0xff9300F5),
                    SvgPic: "Assets/Fab_Button_images/LikeAndShare.svg", onTap: () {  },
                ),
              ],
            ),
          ),
        ));
  }
}

void Refral(BuildContext context) {

  var alertDialog = AlertDialog(
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(20.0))),
  backgroundColor: Colors.white,
  content: SingleChildScrollView(
  child:  Container(
    height: 150,


    decoration: BoxDecoration(

        color: Colors.white),

    child: Column(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppFontTemplate(text: "Referral", SizeofFont: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppFontTemplate(text: "Total No of referral", SizeofFont: 15,textcolor: Colors.grey,),
                  AppFontTemplate(text: "12", SizeofFont: 15,textcolor: Colors.grey,),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppFontTemplate(text: "Total No of Qualified referral", SizeofFont: 15,textcolor: Colors.grey,),
                  AppFontTemplate(text: "05", SizeofFont: 15,textcolor: Colors.blue,),

                ],
              ),
            ],
          ),
        ),
      ],
    ),
  )));

  showDialog(
  context: context,
  builder: (BuildContext context) {
  return alertDialog;
  });
}
void Spin(BuildContext context) {

  var alertDialog = AlertDialog(
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(20.0))),
  backgroundColor: Colors.white,
  content: SingleChildScrollView(
   child:   Container(
     height: 200,


     decoration: BoxDecoration(

         color: Colors.white),

     child: Column(
       children: [
         Expanded(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               AppFontTemplate(text: "Coupons", SizeofFont: 25),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   AppFontTemplate(text: "No.of Coupons Won", SizeofFont: 15,textcolor: Colors.grey,),
                   AppFontTemplate(text: "06", SizeofFont: 15,textcolor: Colors.grey,),

                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   AppFontTemplate(text: "Tokens won from Spin so far", SizeofFont: 15,textcolor: Colors.grey,),
                   AppFontTemplate(text: "08", SizeofFont: 15,textcolor: Colors.blue,),

                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   AppFontTemplate(text: "Remaining Coupons to Spin", SizeofFont: 15,textcolor: Colors.grey,),
                   AppFontTemplate(text: "01", SizeofFont: 15,textcolor: Colors.blue,),

                 ],
               ),
             ],
           ),
         ),
       ],
     ),
   ),

      ));

  showDialog(
  context: context,
  builder: (BuildContext context) {
  return alertDialog;
  });
}


