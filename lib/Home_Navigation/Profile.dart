
import 'package:flutter/material.dart';

import '../Common/AppColor.dart';
import '../Common/FontTemplate.dart';
import '../Common/Profile_LIstTile_Template.dart';
import '../Go_To_Home/Sign_in/Log_in.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: HomeColor.Light,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },

                          child: Icon(Icons.close,color: Colors.white,)),
                    ),
                  ),

                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          image: AssetImage("Assets/profile_Pic/DP.png")),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AppFontTemplate(
                    text: "Tahir Saeed",
                    SizeofFont: 17,
                    textcolor: Colors.white,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AppFontTemplate(
                    text: "tahirsaeed1947@gmail.com",
                    SizeofFont: 12,
                    textcolor: Colors.white,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  AppFontTemplate(
                    text: "+92 316 7882660",
                    SizeofFont: 12,
                    textcolor: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

           Profile_LIstTile_Template(LeadingIcon: Icons.history, title: "History"),
           Profile_LIstTile_Template(LeadingIcon: Icons.home_work_outlined, title: "Bank Details"),
           Profile_LIstTile_Template(LeadingIcon: Icons.notifications, title: "Notifications"),
           Profile_LIstTile_Template(LeadingIcon: Icons.security, title: "security"),
           Profile_LIstTile_Template(LeadingIcon: Icons.help_outline_rounded, title: "Help and Support"),
           Profile_LIstTile_Template(LeadingIcon: Icons.note_alt, title: "Terms and Conditions"),
GestureDetector(
  onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Log_in()))
  ;},
  child:   ListTile(

    leading: Icon(Icons.logout_rounded,color: Color(0xffD90429),size: 30,),

    title: AppFontTemplate(text: "Logout",SizeofFont: 20,),

  ),
)

          ],
        ),
      ),
    ));
  }
}
