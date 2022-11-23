import 'package:flutter/material.dart';

import '../Common/AppColor.dart';
import '../Common/FontTemplate.dart';

class Deposit_INR extends StatefulWidget {
  const Deposit_INR({Key? key}) : super(key: key);

  @override
  State<Deposit_INR> createState() => _Deposit_INRState();
}

class _Deposit_INRState extends State<Deposit_INR> {
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
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios)),
              title: AppFontTemplate(
                text: "Deposit INR",
                SizeofFont: 18,
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
                child: AppFontTemplate(text: "DEPOSIT INR", SizeofFont: 20,textcolor: Colors.white,),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
