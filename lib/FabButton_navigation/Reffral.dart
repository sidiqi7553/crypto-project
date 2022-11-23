
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Common/AppColor.dart';
import '../Common/FontTemplate.dart';

class Reffral extends StatefulWidget {
  const Reffral({Key? key}) : super(key: key);

  @override
  State<Reffral> createState() => _ReffralState();
}

class _ReffralState extends State<Reffral> {
  String quote = "https://www.giottus.com/?refcode=RRPSFAS";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  title: AppFontTemplate(
                    text: "Refer and Earn",
                    SizeofFont: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: kElevationToShadow[3],
                      color: Colors.white),

                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18.0),
                              child: AppFontTemplate(
                                  text: "Referral", SizeofFont: 25),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppFontTemplate(text: "Total No of referral",
                                    SizeofFont: 15,
                                    textcolor: Colors.grey,),
                                  AppFontTemplate(text: "12",
                                    SizeofFont: 15,
                                    textcolor: Colors.grey,),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppFontTemplate(
                                    text: "Total No of Qualified referral",
                                    SizeofFont: 15,
                                    textcolor: Colors.grey,),
                                  AppFontTemplate(text: "05",
                                    SizeofFont: 15,
                                    textcolor: Colors.blue,),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.65,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: kElevationToShadow[3],
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        SizedBox(height: 10,),
                        Image(image: AssetImage(
                            "Assets/Fab_Button_images/Reffral.png")),
                        SizedBox(height: 10,),
                        SizedBox(height: 10,),
                        AppFontTemplate(
                          text: "Refer and Earn Free Crytocurrency",
                          SizeofFont: 20,
                          textcolor: Colors.black,),
                        SizedBox(height: 15,),
                        Align(alignment: Alignment.center,
                            child: AppFontTemplate(
                              text: " Introducing Giottus Referral 2.0. As part of this new program we will be giving away upto 100% of our earning from your referral. And it does not stop there. You get a chance to win upto 10,000 free tokens. Refer, like, share and Earn.",
                              SizeofFont: 15,
                              textcolor: Colors.grey,))
                        ,
                        SizedBox(height: 20,),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppFontTemplate(text: "Your Referal Link",SizeofFont: 17,)
                          ,]),


                        ),
                        
Container(
  height: 40,
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(width: 1,color: Colors.grey),
    
  ),
  child: Center(
    child: Stack(
     alignment: Alignment.centerRight,
      children: [
        AppFontTemplate(text: "https://www.giottus.com/?refcode=RRPSFAS", SizeofFont: 15,textcolor: Colors.grey,),
       Container(
         width: 100,
         height: 30,
         child: ElevatedButton(




             onPressed: (){
               Clipboard.setData(ClipboardData(text: quote))
                   .then((value) { //only if ->
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                   content: Text('Link copied'),
                 ),
                 ); // -> show a notification
               });
         },  child: Center(child: Text("copy code"),)),
       )
      ],
    ),
  ),
)            ,
SizedBox(height: 20,),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HomeColor.Light,
                          ),
                          child: Center(
                            child: AppFontTemplate(text: "Share Now ", SizeofFont: 20,textcolor: Colors.white,),
                          ),
                        ),

                        SizedBox(height: 20,),
                        
                        AppFontTemplate(text: "Terms and Conditions Applied", SizeofFont: 15,textcolor: HomeColor.Light,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
