
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/AppColor.dart';
import '../Common/FontTemplate.dart';
import 'Sign_in/Log_in.dart';
import 'Sign_up/Create_Your_Accoount.dart';

class Lets_in extends StatefulWidget {
  const Lets_in({Key? key}) : super(key: key);

  @override
  State<Lets_in> createState() => _Lets_inState();
}

class _Lets_inState extends State<Lets_in> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(

          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 114,),

Container(
  height: 150,
  width: 400,
  child:
  SvgPicture.asset("Assets/lets_in_Images/Let_in (900 × 680 px).svg"),
)     ,
                SizedBox(height: 35,),
                // Image(image: AssetImage('Assets/Forgot_password_images/FP_pic_1.svg'),height: 100,width: 200,),
 Text("Let's You in",
   textAlign: TextAlign.center,
   style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontWeight:FontWeight.w400,fontSize: 40)),)
,Container(
  height: 50,
                  width: MediaQuery.of(context).size.width*1,
                  margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: HomeColor.Light.withOpacity(0.10),
                        spreadRadius: 3,
                        blurRadius: 15,
                        offset: Offset(0, 0),
                      )
                    ],
                    color: Colors.white,
                     border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("Assets/lets_in_Images/FB.svg"
                 ,width: 50,height: 50, )
                     ,


                      FontTemplate(text: 'Continue with Facebook', SizeofFont: 15,WeightofFont: FontWeight.bold,)                  ],
                  ),
),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*1,
                  margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: HomeColor.Light.withOpacity(0.10),
                        spreadRadius: 3,
                        blurRadius: 15,
                        offset: Offset(0, 0),
                      )
                    ],
                    color: Colors.white,
                    border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("Assets/lets_in_Images/Goo.svg"
                        ,width: 50,height: 50,  ),

                      FontTemplate(text: 'Continue with Google', SizeofFont: 15,WeightofFont: FontWeight.bold,)                  ],
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*1,
                  margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: HomeColor.Light.withOpacity(0.10),
                        spreadRadius: 3,
                        blurRadius: 15,
                        offset: Offset(0, 0),
                      )
                    ],
                    color: Colors.white,
                    border: Border.all(width: 1,color: Colors.grey),borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("Assets/lets_in_Images/appl.svg"
                        ,width: 50,height: 70,  ),

                      FontTemplate(text: 'Continue with Apple', SizeofFont: 15,WeightofFont: FontWeight.bold,)                  ],
                  ),
                ),

                Row( mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 9),
                      height: 1,
                      width: MediaQuery.of(context).size.width*0.35,
                      color: Color(0xffE1E1E1),
                    )
                    ,

                    FontTemplate(text: 'or', SizeofFont: 15,textcolor: Colors.black,),
                    Container(
                      margin: EdgeInsets.only(left: 9,right: 18),
                      height: 1,
                      width: MediaQuery.of(context).size.width*0.35,
                      color: Color(0xffE1E1E1),
                    ),



                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Log_in()));
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
                      child: FontTemplate(text: "Continue with Password", SizeofFont: 15,textcolor: Colors.white,),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FontTemplate(text: "Don't Have an account?", SizeofFont: 12,textcolor: Colors.blueGrey,),
                      SizedBox(width: 8,),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Create_Your_Account()));
                          },
                          child: FontTemplate(text: "Sign Up", SizeofFont: 15,textcolor: AppColor.yellow,WeightofFont: FontWeight.bold,))
                    ],
                  ),
                )
              ],
            ),
          ),

        )
    );
  }
}
