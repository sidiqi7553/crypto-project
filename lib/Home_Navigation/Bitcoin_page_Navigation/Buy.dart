import 'package:flutter/material.dart';

import '../../Common/AppColor.dart';
import '../../Common/FontTemplate.dart';
import '../Botcoin_page.dart';
import 'Sell.dart';

class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bitcoin_page()));
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  title: Row(
                    children: [
                      AppFontTemplate(
                        text: "Buy Bitcoin",
                        SizeofFont: 18,
                      ),
                      AppFontTemplate(
                        text: "BTC",
                        SizeofFont: 12,textcolor:Colors.grey,
                      ),
                    ],
                  ),
                  trailing: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Sell()));
                    },
                    child: Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red.shade100
                      ),
                      child: Center(
                        child: AppFontTemplate(text: "SELL BTC",SizeofFont: 10,textcolor: Colors.red.shade700,),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppFontTemplate(
                        text: "Enter Amount in INR",
                        SizeofFont: 13,
                        textcolor: Colors.grey,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      AppFontTemplate(text: "₹0", SizeofFont: 50),
                      SizedBox(
                        height: 15,
                      ),
                      AppFontTemplate(
                        text: "Min ₹100 - Max ₹10,00000",
                        SizeofFont: 15,
                        textcolor: Colors.grey,
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      AppFontTemplate(text: "Current Balance:  ₹10,000", SizeofFont: 20),

                      SizedBox(height: 10),

                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          percent(text: "0 %",),
                          percent(text: "10 %",),
                          percent(text: "25 %",),
                          percent(text: "50 %",),
                          percent(text: "75 %",),
                          percent(text: "100 %",),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 300,),

                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HomeColor.Light,
                  ),
                  child: Center(
                    child: AppFontTemplate(text: "Preview Buy", SizeofFont: 20,textcolor: Colors.white,),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
