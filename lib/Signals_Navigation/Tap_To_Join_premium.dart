
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:crypto_project/Common/AppColor.dart';
import 'package:crypto_project/Common/FontTemplate.dart';
import 'package:flutter/material.dart';

import 'Gridview Content.dart';
import 'buyhere_bottomsheet.dart';

class Premium_Page extends StatefulWidget {
   const Premium_Page({Key? key}) : super(key: key);

   @override
   State<Premium_Page> createState() => _Premium_PageState();
 }

 class _Premium_PageState extends State<Premium_Page> {
   Future<void> _launchedTelegram(String url)async{
     if(await canLaunch(url))
     {final bool nativeAppLaunchSucceeded =await launch(url, forceSafariVC: false, universalLinksOnly: true,);
     if (!nativeAppLaunchSucceeded){await launch(url, forceSafariVC: true,);}}
   }
    launchTelegram() async{
     String url =
         "https://telegram.me/<Hamza1801>";
     print("launchingUrl: $url");
     if (await canLaunchUrl(Uri())) {
       await launchUrl(Uri());
     }

   }
   // int currentIndex = 0;
   // PageController _controller = PageController();
   //
   // @override
   // void initState() {
   //   _controller = PageController(initialPage: 0);
   //   super.initState();
   // }
   //
   // @override
   // void dispose() {
   //   _controller.dispose();
   //   super.dispose();
   // }
   @override
   Widget build(BuildContext context) {
     return SafeArea(child: Scaffold(
       body:
       SingleChildScrollView(
         child: Column(
           children: [
             ListTile(
               trailing: InkWell(
                 onTap: (){
                   Navigator.pop(context);
                 },
                 child: Container(
                   height: 30,
                   width: 30,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: HomeColor.Light,
                   ),
                   child: Center(
                     child: Icon(Icons.close,color: Colors.white,),
                   ),
                 ),
               ),
             ),
             Container(

               child: Center(
                 child: AppFontTemplate(text: "Let's Gain Profit", SizeofFont: 35,WeightofFont: FontWeight.bold,),
               ),
             ),
             Container(
               height: 30,
               child: Padding(
                 padding: const EdgeInsets.only(left: 25.0,top: 7),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     AppFontTemplate(
                       text: "Unlock all Premium Signals",
                       SizeofFont: 15,
                       WeightofFont: FontWeight.bold,
                     ),
                   ],
                 ),
               ),
             ),
             SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   height: 100,
                   width: MediaQuery.of(context).size.width*0.42,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black.withOpacity(0.10),
                         spreadRadius: 0,
                         blurRadius: 10,
                         offset: Offset(0, 0),
                       ),
                     ],
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         AppFontTemplate(text: "Weekly Premium (Signals - Crypto)", SizeofFont: 10,WeightofFont: FontWeight.bold,),
                         AppFontTemplate(text: "RS. 16,00.00", SizeofFont: 15,WeightofFont: FontWeight.bold,),
                       ],
                     ),
                   ),
                 ),
                 Container(
                   height: 100,
                   width: MediaQuery.of(context).size.width*0.42,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black.withOpacity(0.10),
                         spreadRadius: 0,
                         blurRadius: 10,
                         offset: Offset(0, 0),
                       ),
                     ],
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         AppFontTemplate(text: "Annual Premium (Signals - Crypto)", SizeofFont: 10,WeightofFont: FontWeight.bold,),
                         AppFontTemplate(text: "RS. 36,000.00", SizeofFont: 15,WeightofFont: FontWeight.bold,),
                       ],
                     ),
                   ),
                 ),
               ],
             ),

             SizedBox(height: 15,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   height: 100,
                   width: MediaQuery.of(context).size.width*0.42,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black.withOpacity(0.10),
                         spreadRadius: 0,
                         blurRadius: 10,
                         offset: Offset(0, 0),
                       ),
                     ],
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         AppFontTemplate(text: "3 Months Premium (Signals - Crypto)", SizeofFont: 10,WeightofFont: FontWeight.bold,),
                         AppFontTemplate(text: "RS. 12,900.00", SizeofFont: 15,WeightofFont: FontWeight.bold,),
                       ],
                     ),
                   ),
                 ),
                 Container(
                   height: 100,
                   width: MediaQuery.of(context).size.width*0.42,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black.withOpacity(0.10),
                         spreadRadius: 0,
                         blurRadius: 10,
                         offset: Offset(0, 0),
                       ),
                     ],
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         AppFontTemplate(text: "6 Months Premium (Signals - Crypto)", SizeofFont: 10,WeightofFont: FontWeight.bold,),
                         AppFontTemplate(text: "RS. 24,400.00", SizeofFont: 15,WeightofFont: FontWeight.bold,),
                       ],
                     ),
                   ),
                 ),
               ],
             ),

             Padding(
               padding: const EdgeInsets.only(top: 10.0,bottom: 5),
               child: Container(
                 height: 70,
                 width: MediaQuery.of(context).size.width*0.9,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: HomeColor.Light,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black.withOpacity(0.10),
                       spreadRadius: 0,
                       blurRadius: 10,
                       offset: Offset(0, 0),
                     ),
                   ],
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       AppFontTemplate(text: "3 Days Free Trail - Monthly", SizeofFont: 10,WeightofFont: FontWeight.bold,textcolor: Colors.white,),
                       AppFontTemplate(text: "RS. 56,00.00", SizeofFont: 15,WeightofFont: FontWeight.bold,textcolor: Colors.white,),
                     ],
                   ),
                 ),
               ),
             ),
             Container(
               height: 40,
               child: Padding(
                 padding: const EdgeInsets.only(top: 0),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     AppFontTemplate(
                       text: "restore Purchase",
                       SizeofFont: 15,
                       WeightofFont: FontWeight.bold,
                       textcolor: HomeColor.Light,
                     ),
                   ],
                 ),
               ),
             ),
             Container(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(
                       flex: 1,
                       child: Align(
                         alignment: Alignment.center,
                         child: Text(

                           "The subscription is renewed automatically no later than 24 hours before the end of the current period. You can cancel renewal in your playstore ID settings anytime",
                         textAlign: TextAlign.center,
                         style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),
                         )
                       ),
                     ),
                   ],
                 ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 2.5),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     height: 50,
                     width: MediaQuery.of(context).size.width*0.42,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black.withOpacity(0.10),
                           spreadRadius: 0,
                           blurRadius: 10,
                           offset: Offset(0, 0),
                         ),
                       ],
                     ),
                     child: Center(
                       child: AppFontTemplate(text: "Privacy Policy", SizeofFont: 15,textcolor: Colors.black,),
                     ),
                   ),
                   Container(
                     height: 50,
                     width: MediaQuery.of(context).size.width*0.42,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black.withOpacity(0.10),
                           spreadRadius: 0,
                           blurRadius: 10,
                           offset: Offset(0, 0),
                         ),
                       ],
                     ),
                     child: Center(
                       child: AppFontTemplate(text: "terms Of use", SizeofFont: 15,textcolor: Colors.black,),
                     ),
                   ),
                 ],
               ),
             ),

             Container(
               height: 40,
               child: Padding(
                 padding: const EdgeInsets.only(top: 10),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     AppFontTemplate(
                       text: "looking for crypto or other methods",
                       SizeofFont: 18,
                       WeightofFont: FontWeight.bold,
                       textcolor: Colors.black,
                     ),
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 5),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyHere()));
                     },
                     child: Container(
                       height: 40,
                       width: MediaQuery.of(context).size.width*0.25,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.black,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black.withOpacity(0.10),
                             spreadRadius: 0,
                             blurRadius: 10,
                             offset: Offset(0, 0),
                           ),
                         ],
                       ),
                       child: Center(
                         child: AppFontTemplate(text: "Buy Here", SizeofFont: 15,textcolor: Colors.white,WeightofFont: FontWeight.bold,),
                       ),
                     ),
                   ),
                   GestureDetector(
                     onTap: (){
                       Redeem(context);
                     },
                     child: Container(
                       height: 40,
                       width: MediaQuery.of(context).size.width*0.25,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black.withOpacity(0.10),
                             spreadRadius: 0,
                             blurRadius: 10,
                             offset: Offset(0, 0),
                           ),
                         ],
                       ),
                       child: Center(
                         child: AppFontTemplate(text: "Redeem", SizeofFont: 15,textcolor: Colors.black,WeightofFont: FontWeight.bold,),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             Container(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(
                       flex: 1,
                       child: Align(
                           alignment: Alignment.center,
                           child: Text(

"For further information about price plan you can contact me via my telegram by tapping to the contact button below",
                             textAlign: TextAlign.center,
                             style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),
                           )
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             GestureDetector(
               onTap: (){
                 _launchedTelegram('https://telegram.me/<Hamza1801>');
               },
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     height: 40,
                     width: MediaQuery.of(context).size.width*0.34,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: HomeColor.Light,
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black.withOpacity(0.10),
                           spreadRadius: 0,
                           blurRadius: 10,
                           offset: Offset(0, 0),
                         ),
                       ],
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Icon(Icons.telegram_outlined,color: Colors.white,),
                         AppFontTemplate(text: "Contact", SizeofFont: 15,textcolor: Colors.white,WeightofFont: FontWeight.bold,),
                       ],
                     ),
                   ),
                 ],
               ),
             )
             // GridView.builder( gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
             //     maxCrossAxisExtent: 200,
             //     childAspectRatio: 3 / 2,
             //     crossAxisSpacing: 20,
             //     mainAxisSpacing: 20
             // ),
             //
             //
             //     itemCount: contents.length,
             //     itemBuilder: (BuildContext ctx, index) {
             //       return Container(
             //         height: 100,
             //         width: MediaQuery.of(context).size.width*0.42,
             //         decoration: BoxDecoration(
             //           borderRadius: BorderRadius.circular(10),
             //           color: Colors.white,
             //           boxShadow: [
             //             BoxShadow(
             //               color: Colors.black.withOpacity(0.10),
             //               spreadRadius: 0,
             //               blurRadius: 10,
             //               offset: Offset(0, 0),
             //             ),
             //           ],
             //         ),
             //         child: Padding(
             //           padding: const EdgeInsets.all(15.0),
             //           child: Column(
             //             children: [
             //               Expanded(
             //                 child: Column(
             //                   crossAxisAlignment: CrossAxisAlignment.start,
             //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             //                   children: [
             //                     AppFontTemplate(text: contents[index].TITLE, SizeofFont: 15,WeightofFont: FontWeight.bold,),
             //                     AppFontTemplate(text: contents[index].Amount, SizeofFont: 15,WeightofFont: FontWeight.bold,),
             //
             //                   ],
             //                 ),
             //               ),
             //             ],
             //           ),
             //         ),
             //       );
             //     })
           ],
         ),
       ),
     ));
   }
 }

void buyhere(BuildContext context) {
  showModalBottomSheet(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      anchorPoint: Offset(0, 3),
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext c) {
        int groupValue1 = 0;
        return Wrap(
            children: <Widget>[
              Container(
                child: Container(
                  decoration: new BoxDecoration(
                      color:  Colors.white,
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(25.0),
                          topRight: const Radius.circular(25.0))),
                  child:BuyHere(),
                ),
              )
            ]
        );
      });
}
void Redeem(BuildContext context) {
  // Timer (
  //     Duration(seconds: 3),(){
  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Log_in()));
  // }
  // );

  var alertDialog = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      backgroundColor: Colors.white,
      content: SingleChildScrollView(
        child:
     Container(

child: Padding(
  padding: const EdgeInsets.all(0.0),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
AppFontTemplate(text: "Redeem Promo Code", SizeofFont: 15,WeightofFont: FontWeight.bold,),
      SizedBox(height: 10,),
      Container(
        height: 50,
        color: Colors.grey.shade200,
        child: TextFormField(
cursorHeight: 30,
          autofocus: true,
        ),
      ),
      SizedBox(height: 5,),
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Cancel",style: TextStyle(color: HomeColor.Light),)),
          TextButton(onPressed: (){

          }, child: Text("Confirm",style: TextStyle(color: Colors.grey.shade700),))
        ],
      )
    ],
  ),
),
     )
      ));

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
