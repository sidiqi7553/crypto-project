import 'package:flutter/material.dart';

import 'AppColor.dart';
import 'FontTemplate.dart';

class Bottom_Sheet extends StatefulWidget {
  Bottom_Sheet({Key? key}) : super(key: key);

  @override
  State<Bottom_Sheet> createState() => _Bottom_SheetState();
}

class _Bottom_SheetState extends State<Bottom_Sheet> {
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
            AppFontTemplate(text: "Markets", SizeofFont: 20,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppFontTemplate(text: "Indian - INR",
                  SizeofFont: 15,
                  textcolor: HomeColor.Light,),

                Radio(
                    value: 0,
                    groupValue: groupValue,
                    onChanged: handleRadio),

              ],
            ),

            Container(
              height: 1,
              width: double.infinity,

              color: Colors.grey,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppFontTemplate(text: "Bitcoin - BTC",
                  SizeofFont: 15,
                  textcolor: Colors.grey),

                Radio(
                    value: 1,
                    groupValue: groupValue,
                    onChanged: handleRadio),

              ],
            ),

            Container(
              height: 1,
              width: double.infinity,

              color: Colors.grey,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppFontTemplate(text: "TetherUS - USDT",
                  SizeofFont: 15,
                  textcolor: Colors.grey),

                Radio(
                    value: 2,
                    groupValue: groupValue,
                    onChanged: handleRadio),

              ],
            ),

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




