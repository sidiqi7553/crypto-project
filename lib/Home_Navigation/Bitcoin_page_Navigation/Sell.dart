
import 'package:flutter/material.dart';

import '../../Common/AppColor.dart';
import '../../Common/FontTemplate.dart';
import '../Botcoin_page.dart';
import 'Buy.dart';
class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
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
                        text: "Sell Bitcoin",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy()));
                    },
                    child: Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green.shade100
                      ),
                      child: Center(
                        child: AppFontTemplate(text: "Buy BTC",SizeofFont: 10,textcolor: Colors.green.shade700,),
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
                        text: "BTC Amount",
                        SizeofFont: 15,
                        textcolor: Colors.grey,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppFontTemplate(text: "0.00", SizeofFont: 50),
                          SizedBox(width: 10,),
                          AppFontTemplate(
                            text: "BTC",
                            SizeofFont: 25,
                            textcolor: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AppFontTemplate(
                        text: "Min 0.0001 BTC - Max 10,000 BTC",
                        SizeofFont: 15,
                        textcolor: Colors.grey,
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      AppFontTemplate(text: "Available Balance:  3.5849 BTC", SizeofFont: 20),

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
                    child: AppFontTemplate(text: "Preview Sell", SizeofFont: 20,textcolor: Colors.white,),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
