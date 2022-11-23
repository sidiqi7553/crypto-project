
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../BottomNavigationBar/BottomNavigationBar.dart';
import '../Common/AppColor.dart';
import '../Common/FontTemplate.dart';
import 'Bitcoin_page_Navigation/Sell.dart';
import 'Bitcoin_page_Navigation/Transaction.dart';
import 'Bitcoin_page_Navigation/exchange_bottom_sheet.dart';
import 'Bitcoin_page_Navigation/Buy.dart';

class Bitcoin_page extends StatefulWidget {
  Bitcoin_page({Key? key}) : super(key: key);

  @override
  State<Bitcoin_page> createState() => _Bitcoin_pageState();
}

class _Bitcoin_pageState extends State<Bitcoin_page> {
  double percent = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyStatefulWidget()));
                            },
                            child: Icon(Icons.arrow_back_ios)),
                        SizedBox(
                          width: 2,
                        ),
                        CircleAvatar(
                          radius: 14.0,
                          child: ClipRRect(
                            child: Image.asset(
                                'Assets/Home_images/Coin_and_Graph_images/BitCoin/BitCoin.png'),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        AppFontTemplate(text: "Bitcoin", SizeofFont: 15),
                        AppFontTemplate(
                          text: "(BTC)",
                          SizeofFont: 13,
                          textcolor: Colors.grey,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Icon(Icons.star_border_outlined),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      ExchangeBottomSheet(context);
                    },
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color(0xffb7d8f7),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: HomeColor.Light,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.compare_arrows,
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                          ),
                          AppFontTemplate(
                            text: "Exchange",
                            SizeofFont: 10,
                            textcolor: HomeColor.Light,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppFontTemplate(text: "₹98,509.75", SizeofFont: 30),
                  SizedBox(
                    width: 3,
                  ),
                  AppFontTemplate(
                    text: "+ 1700.254 (9.77%)",
                    SizeofFont: 18,
                    textcolor: Colors.green,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 18, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppFontTemplate(
                    text: "₹96,879.35",
                    SizeofFont: 13,
                    textcolor: Color(0xff7E868D),
                  )
                ],
              ),
            ),
            SvgPicture.asset(
                "Assets/Home_images/Coin_and_Graph_images/BitCoin/Bitcoin_page_graph.svg"),
            Padding(
              padding: const EdgeInsets.only(
                right: 25.0,
                left: 18,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppFontTemplate(
                    text: "₹94,279.18",
                    SizeofFont: 13,
                    textcolor: Color(0xff7E868D),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 29,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey.shade400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 1,
                      height: 10,
                      color: Colors.grey.shade400,
                    ),
                    AppFontTemplate(text: "04:16", SizeofFont: 8),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 1,
                      height: 10,
                      color: Colors.grey.shade400,
                    ),
                    AppFontTemplate(text: "06:54", SizeofFont: 8),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 1,
                      height: 10,
                      color: Colors.grey.shade400,
                    ),
                    AppFontTemplate(text: "09:18", SizeofFont: 8),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 1,
                      height: 10,
                      color: Colors.grey.shade400,
                    ),
                    AppFontTemplate(text: "14:57", SizeofFont: 8),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 1,
                      height: 10,
                      color: Colors.grey.shade400,
                    ),
                    AppFontTemplate(text: "16:29", SizeofFont: 8),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 22,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue.shade100,
                      border: Border.all(width: 1, color: HomeColor.Light)),
                  child: Center(
                    child: AppFontTemplate(
                      text: "1 H",
                      SizeofFont: 12,
                      textcolor: HomeColor.Light,
                    ),
                  ),
                ),
                Container(
                  height: 22,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.grey.shade100,
                      border:
                          Border.all(width: 1, color: Colors.grey.shade400)),
                  child: Center(
                    child: AppFontTemplate(
                        text: "24 H",
                        SizeofFont: 12,
                        textcolor: Colors.grey.shade600),
                  ),
                ),
                Container(
                  height: 22,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.grey.shade100,
                      border:
                          Border.all(width: 1, color: Colors.grey.shade400)),
                  child: Center(
                    child: AppFontTemplate(
                        text: "1 W",
                        SizeofFont: 12,
                        textcolor: Colors.grey.shade600),
                  ),
                ),
                Container(
                  height: 22,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.grey.shade100,
                      border:
                          Border.all(width: 1, color: Colors.grey.shade400)),
                  child: Center(
                    child: AppFontTemplate(
                        text: "1 M",
                        SizeofFont: 12,
                        textcolor: Colors.grey.shade600),
                  ),
                ),
                Container(
                  height: 22,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.grey.shade100,
                      border:
                          Border.all(width: 1, color: Colors.grey.shade400)),
                  child: Center(
                    child: AppFontTemplate(
                        text: "6 M",
                        SizeofFont: 12,
                        textcolor: Colors.grey.shade600),
                  ),
                ),
                Container(
                  height: 22,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.grey.shade100,
                      border:
                          Border.all(width: 1, color: Colors.grey.shade400)),
                  child: Center(
                    child: AppFontTemplate(
                        text: "1 Y",
                        SizeofFont: 12,
                        textcolor: Colors.grey.shade600),
                  ),
                ),
                Container(
                  height: 22,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.grey.shade100,
                      border:
                          Border.all(width: 1, color: Colors.grey.shade400)),
                  child: Center(
                    child: AppFontTemplate(
                        text: "ALL",
                        SizeofFont: 12,
                        textcolor: Colors.grey.shade600),
                  ),
                ),
              ],
            ),
            Container(
              height: 75,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 18, right: 18, top: 15, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: kElevationToShadow[1],
                  color: Colors.white),
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
                              child: Image.asset(
                                'Assets/Home_images/Coin_and_Graph_images/BitCoin/BitCoin.png',
                                height: 150,
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
                            AppFontTemplate(
                              text: "Bitcoin",
                              SizeofFont: 18,
                              textcolor: Colors.black,
                            ),
                            AppFontTemplate(
                              text: "00.00 BTC",
                              SizeofFont: 14,
                              textcolor: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 17.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AppFontTemplate(
                            text: "₹00.00",
                            SizeofFont: 20,
                            textcolor: Colors.black,
                          ),
                          AppFontTemplate(
                            text: "00.00%",
                            SizeofFont: 13,
                            textcolor: Colors.grey.shade500,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Transaction()));
              },
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: kElevationToShadow[1],
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppFontTemplate(text: "Transactions", SizeofFont: 20),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Buy()));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.4,
                      margin: EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: HomeColor.Light,
                      ),
                      child: Center(
                        child: AppFontTemplate(
                          text: "Buy ",
                          SizeofFont: 20,
                          textcolor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sell()));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.4,
                      margin: EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: HomeColor.Light,
                      ),
                      child: Center(
                        child: AppFontTemplate(
                          text: "Sell ",
                          SizeofFont: 20,
                          textcolor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

void ExchangeBottomSheet(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext c) {
        int groupValue1 = 0;
        return Exchange_Bottom_Sheet();
      });
}
