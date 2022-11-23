
import 'package:crypto_project/Signals_Navigation/Future.dart';
import 'package:flutter/material.dart';

import '../Common/AppColor.dart';
import '../Common/FontTemplate.dart';
import '../Common/Home_Container_Template.dart';
import '../Market_TabBar_View/Gainer.dart';
import '../Market_TabBar_View/Looser.dart';
import '../Signals_Navigation/Deposit_INR.dart';
import '../Signals_Navigation/Spot.dart';
import '../Signals_Navigation/WithDraw_INR.dart';

class Signals extends StatefulWidget {
  const Signals({Key? key}) : super(key: key);

  @override
  State<Signals> createState() => _SignalsState();
}

class _SignalsState extends State<Signals> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
centerTitle: true,

          leading: Container(),
          title: AppFontTemplate(text: "Signals", SizeofFont: 18,textcolor: Colors.white,WeightofFont: FontWeight.bold,),
          bottom: TabBar(
              indicatorColor: Colors.yellowAccent,
              labelColor: Colors.yellowAccent
              ,
              unselectedLabelColor: Colors.grey,
              indicatorSize:TabBarIndicatorSize.tab ,


              tabs: [

                Tab(
                  text: 'Spots',
                ),
                Tab(
                  text: 'Future',
                ),


              ]),
        ),
body: TabBarView(

  children: [

    Spot(),
    Futures()


  ],
),
      //   body: SingleChildScrollView(
      // child: Column(
      //   children: [
      //     Container(
      //       height: 200,
      //       width: MediaQuery.of(context).size.width,
      //       margin: EdgeInsets.only(left: 15, right: 15, top: 10),
      //       decoration: BoxDecoration(
      //         color: HomeColor.Light,
      //         borderRadius: BorderRadius.circular(10),
      //       ),
      //       child: Padding(
      //         padding: const EdgeInsets.only(left: 22.0, top: 25),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             AppFontTemplate(
      //               text: "Portfolio",
      //               SizeofFont: 17,
      //               textcolor: Colors.white,
      //             ),
      //             SizedBox(
      //               height: 30,
      //             ),
      //             AppFontTemplate(
      //               text: "Holding value",
      //               SizeofFont: 8,
      //               textcolor: Colors.white,
      //             ),
      //             SizedBox(
      //               height: 7,
      //             ),
      //             Row(
      //               children: [
      //                 AppFontTemplate(
      //                   text: "₹2,509.75",
      //                   SizeofFont: 17,
      //                   textcolor: Colors.white,
      //                 ),
      //                 SizedBox(
      //                   width: 5,
      //                 ),
      //                 AppFontTemplate(
      //                   text: "+9.77%",
      //                   SizeofFont: 10,
      //                   textcolor: Colors.white,
      //                 ),
      //               ],
      //             ),
      //             SizedBox(
      //               height: 15,
      //             ),
      //             Row(
      //
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     AppFontTemplate(
      //                       text: "Invested value",
      //                       SizeofFont: 8,
      //                       textcolor: Colors.white,
      //                     ),
      //                    SizedBox(height: 2,),
      //                     AppFontTemplate(text: "₹1,618.75", SizeofFont: 15,textcolor: Colors.white,),
      //
      //                   ],
      //                 ),
      //                 Container(
      //                   width: 1,
      //                   height: 30,
      //                   color: Colors.white,
      //                   margin: EdgeInsets.symmetric(horizontal: 20),
      //                 ),
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     AppFontTemplate(
      //                       text: "Available INR",
      //                       SizeofFont: 8,
      //                       textcolor: Colors.white,
      //                     ),
      //                     SizedBox(height: 2,),
      //                     AppFontTemplate(text: "₹ 1589", SizeofFont: 15,textcolor: Colors.white,),
      //
      //                   ],
      //                 ),
      //               ],
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //
      //     Container(
      //       height: 70,
      //       width: MediaQuery.of(context).size.width,
      //       padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      //
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           GestureDetector(
      //             onTap: (){
      //               Navigator.push(context, MaterialPageRoute(builder: (context)=>Deposit_INR()));
      //             } ,
      //             child: Container(
      //               height: 50,
      //               width: MediaQuery.of(context).size.width*0.42,
      //               decoration: BoxDecoration(
      //                   boxShadow: [
      //                     BoxShadow(
      //                       color: Colors.black.withOpacity(0.10),
      //                       spreadRadius: 0,
      //                       blurRadius: 10,
      //                       offset: Offset(0, 0),
      //                     )
      //                   ],
      //                   border: Border.all(width: 1,color: HomeColor.Light),
      //                   color: HomeColor.Light,
      //                   borderRadius: BorderRadius.circular(10)
      //               ),
      //               margin: EdgeInsets.only(right: 15),
      //               child: Row(
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   AppFontTemplate(text: "Deposit INR", SizeofFont: 15,textcolor: Colors.white,)
      //
      //                 ],
      //               ),
      //             ),
      //           ),
      //           GestureDetector(
      //             onTap: (){
      //               Navigator.push(context, MaterialPageRoute(builder: (context)=>Withdraw_INR()));
      //             } ,
      //             child: Container(
      //               height: 50,
      //               width: MediaQuery.of(context).size.width*0.42,
      //
      //               margin: EdgeInsets.only(left: 15),
      //               decoration: BoxDecoration(
      //                   boxShadow: [
      //                     BoxShadow(
      //                       color: Colors.black.withOpacity(0.10),
      //                       spreadRadius: 0,
      //                       blurRadius: 10,
      //                       offset: Offset(0, 0),
      //                     )
      //                   ],
      //                 border: Border.all(width: 1,color: HomeColor.Light),
      //                 color: Colors.white,
      //                 borderRadius: BorderRadius.circular(10)
      //               ),
      //               child: Row(
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   AppFontTemplate(text: "Withdraw INR", SizeofFont: 15,textcolor: HomeColor.Light,)
      //
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //
      //
      //     ),
      //
      //     SizedBox(height: 25,),
      //     Container(
      //       height: 30,
      //       child: Padding(
      //         padding: const EdgeInsets.only(left: 15.0),
      //         child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             AppFontTemplate(
      //               text: "Your Coin",
      //               SizeofFont: 20,
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //
      //     Home_Container_Template(
      //       title: "Ethereum",
      //       subtitle: "0.0004586 ETH",
      //       image: Image.asset(
      //           'Assets/Home_images/Coin_and_Graph_images/Ethereum.png'),
      //       amount: "₹1,085.18",
      //       percent: -21.00,
      //       graphImagePath:
      //       "Assets/Home_images/Coin_and_Graph_images/Ethereum_graph.svg",
      //     ),
      //     Home_Container_Template(
      //       title: "Cardano",
      //       subtitle: "18.698 ADA",
      //       image: Image.asset(
      //           'Assets/Home_images/Coin_and_Graph_images/Cardano.png'),
      //       amount: "₹886.127",
      //       percent: 16.31,
      //       graphImagePath:
      //       "Assets/Home_images/Coin_and_Graph_images/Cardano_graph.svg",
      //     ),
      //     Home_Container_Template(
      //       title: "TRON ",
      //       subtitle: "10.589 TRX",
      //       image: Image.asset(
      //           'Assets/Home_images/Coin_and_Graph_images/TRON .png'),
      //       amount: "₹50.529",
      //       percent: -16.58,
      //       graphImagePath:
      //       "Assets/Home_images/Coin_and_Graph_images/TRON _graph.svg",
      //     ),
      //     Home_Container_Template(
      //       title: "Dogecoin",
      //       subtitle: "5.485 DOGE",
      //       image: Image.asset(
      //           'Assets/Home_images/Coin_and_Graph_images/Dogecoin.png'),
      //       amount: "₹589.39",
      //       percent: 120.00,
      //       graphImagePath:
      //       "Assets/Home_images/Coin_and_Graph_images/Dogecoin_graph.svg",
      //     ),
      //
      //
      //   ],
      // ),
      //   ),
      ),
    );
  }
}
