import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Common/AppColor.dart';
import '../../Common/FontTemplate.dart';
import 'Exchange_bottomSheet_Navigation/Received_Crypto.dart';
import 'Exchange_bottomSheet_Navigation/Send_Crypto.dart';

class Exchange_Bottom_Sheet extends StatefulWidget {
  Exchange_Bottom_Sheet({Key? key}) : super(key: key);

  @override
  State<Exchange_Bottom_Sheet> createState() => _Exchange_Bottom_SheetState();
}

class _Exchange_Bottom_SheetState extends State<Exchange_Bottom_Sheet> {
  int groupValue =0;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            AppFontTemplate(text: "Exchange", SizeofFont: 17,),
SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Send_Crypto()));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Icon(Icons.call_made,color: HomeColor.Light,size: 30,),
                  SizedBox(height: 10,width: 7,),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppFontTemplate(text: "Send Crypto",
                        SizeofFont: 13,
                        textcolor: Colors.black,),

                      AppFontTemplate(text: "Send Crypto from your wallet to another wallet ",
                        SizeofFont: 11,
                        textcolor: Colors.grey,),
                    ],
                  ),



                ],
              ),
            ),

            Container(
              height: 1,
              width: double.infinity,
margin: EdgeInsets.symmetric(vertical: 15),
              color: Colors.grey,
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Received_Crypto()));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Icon(Icons.call_received,color: HomeColor.Light,size: 30,),
                  SizedBox(height: 10,width: 7,),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppFontTemplate(text: "Receive Crypto",
                        SizeofFont: 13,
                        textcolor: Colors.black,),

                      AppFontTemplate(text: "Recieve Crypto from other wallet to your wallet",
                        SizeofFont: 11,
                        textcolor: Colors.grey,),
                    ],
                  ),



                ],
              ),
            ),
SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*1,
                margin: EdgeInsets.only(top: 15,bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:
                  HomeColor.Light,
                ),
                child: Center(
                  child: FontTemplate(text: "Update Market", SizeofFont: 15,textcolor: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handleRadio(value) {
    setState(() {
      groupValue = value;
    });
  }

}