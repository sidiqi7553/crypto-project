
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Common/AppColor.dart';
import '../../Common/FontTemplate.dart';
import 'Pin_Put.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({Key? key}) : super(key: key);

  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: FontTemplate(
                text: "Forgot Password",
                SizeofFont: 20,
                textcolor: Colors.black,
                WeightofFont: FontWeight.bold,
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
           Container(
               padding: EdgeInsets.only(bottom: 20),
               child: SvgPicture.asset("Assets/Forgot_password_images/FP_pic_1.svg",height: 200,width: 200,)),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: FontTemplate(
                text:
                    "Select Which Contact detials we should use to reset your password",
                SizeofFont: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){},
              highlightColor: Colors.purple,
              splashColor: Colors.blue,
              child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 1,
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    border: _currentindex == 0? Border.all(width: 2, color: Colors.blue):Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xfff9dab3),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.sms_rounded,
                                color: AppColor.yellow,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 23.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FontTemplate(text: "via SMS", SizeofFont: 14,textcolor: Colors.grey,)
                            ,
                            SizedBox(height: 8,),

                            FontTemplate(text: "+1 111 245***23", SizeofFont: 16,textcolor: Colors.black,)
                          ],
                        ),
                      )
                    ],
                  ),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 1,
              margin:
              EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                border:  Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color(0xfff9dab3),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email_rounded,
                            color: AppColor.yellow,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FontTemplate(text: "via Email", SizeofFont: 14,textcolor: Colors.grey,)
                        ,
                        SizedBox(height: 8,),

                        FontTemplate(text: "Hamza*****@gmail.com", SizeofFont: 16,textcolor: Colors.black,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Pin_Put()));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width*1,
                margin: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.yellow,
                ),
                child: Center(
                  child: FontTemplate(text: "Continue", SizeofFont: 15,textcolor: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
