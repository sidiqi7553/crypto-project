import 'package:crypto_project/Common/AppColor.dart';
import 'package:crypto_project/Signals_Navigation/Tap_To_Join_premium.dart';
import 'package:flutter/material.dart';

import '../Common/FontTemplate.dart';
import '../Common/Signal_Spot_Future_Template.dart';
import 'Details_expand.dart';

class Spot extends StatefulWidget {
  const Spot({Key? key}) : super(key: key);

  @override
  State<Spot> createState() => _SpotState();
}

class _SpotState extends State<Spot> {
  var check = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Tap_For_Premium(CoinImgPNG: "Assets/Home_images/Coin_and_Graph_images/Binance Coin.png", CoinName: "Binance Coin", Date_Time:"Aug 14,11:58 AM" ,onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>Premium_Page()));
          },),

          SingleChildScrollView(
            child: Container(
              // height: 120,
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
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Row(
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
                                          "Assets/Home_images/Coin_and_Graph_images/Dai.png"),
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
                                        text: "Dai",
                                        SizeofFont: 18,
                                        textcolor: Colors.black,
                                        WeightofFont: FontWeight.bold,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      AppFontTemplate(
                                          text: "Aug 14 ,11:33 AM",
                                          SizeofFont: 12)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 21,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.white,
                                            border: Border.all(
                                                width: 1, color: Colors.green)),
                                        child: Center(
                                          child: AppFontTemplate(
                                            text: "Low Risk",
                                            SizeofFont: 10,
                                            textcolor: Colors.green,
                                            WeightofFont: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Container(
                                        height: 21,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.green,
                                            border: Border.all(
                                                width: 1, color: Colors.green)),
                                        child: Center(
                                          child: AppFontTemplate(
                                            text: "Hold 0.109",
                                            SizeofFont: 10,
                                            textcolor: Colors.white,
                                            WeightofFont: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Container(
                                        height: 21,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          color: Colors.red,
                                          //border: Border.all(width: 1,color: Colors.green)
                                        ),
                                        child: Center(
                                          child: AppFontTemplate(
                                            text: "Stop 0.099",
                                            SizeofFont: 10,
                                            textcolor: Colors.white,
                                            WeightofFont: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                check = !check;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              margin: EdgeInsets.only(left: 15,right: 15,bottom: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade200),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppFontTemplate(
                                      text: "current price",
                                      SizeofFont: 10,
                                      textcolor: Colors.black,
                                      WeightofFont: FontWeight.bold,
                                    ),
                                    AppFontTemplate(
                                      text: "0.1044",
                                      SizeofFont: 10,
                                      textcolor: Colors.black,
                                      WeightofFont: FontWeight.bold,
                                    ),
                                    Row(
                                      children: [
                                        AppFontTemplate(
                                          text: "-4.22%",
                                          SizeofFont: 10,
                                          textcolor: Colors.red,
                                          WeightofFont: FontWeight.bold,
                                        ),
                                        Icon(
                                          Icons.arrow_downward,
                                          color: Colors.red,
                                          size: 12,
                                        ),
                                        Icon(
                                          check
                                              ? Icons.expand_more_outlined
                                              : Icons.expand_less_outlined,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: check ? null : Details(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0,right: 20,bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppFontTemplate(text: "Analysis", SizeofFont: 13,WeightofFont: FontWeight.bold,textcolor: Colors.black,),
                            Row(
                              children: [
                                Icon(Icons.area_chart,color: HomeColor.Light,size: 15,),
                                AppFontTemplate(text: "Charts", SizeofFont: 13,WeightofFont: FontWeight.bold,textcolor: HomeColor.Light,),

                              ],
                            ),
                            Row(

                              children: [
                                Icon(Icons.more_horiz,size: 15,),
                                AppFontTemplate(text: "More", SizeofFont: 13,WeightofFont: FontWeight.bold,),

                              ],
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Tap_For_Premium(CoinImgPNG: "Assets/Home_images/Coin_and_Graph_images/Dogecoin.png", CoinName: "Dogecoin", Date_Time:"Aug 18,11:58 AM" )
        ],
      ),
    );
  }
}
