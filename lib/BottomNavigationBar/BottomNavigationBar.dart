import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'FabButton.dart';
import 'Home.dart';
import 'Market.dart';
import 'Signals.dart';
import 'Wallet.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   Home(),
    Signals(),
    FabButton(),
    Market(),
    Wallet()

  ];

   _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: Card(
        elevation: 8,
        child: Container(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    _onItemTapped(0);
                  },
                  child: Column(
                    children: [
                      Icon(Icons.home_outlined,
                        color: _selectedIndex==0? Color(0xff351778):Color(0xff6C757D),),
                      Text("Home",
                      style: TextStyle(color: _selectedIndex==0? Color(0xff351778):Color(0xff6C757D),),)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    _onItemTapped(1);
                  },
                  child: Column(
                    children: [
                      Icon(Icons.pie_chart_outline,
                        color: _selectedIndex==1? Color(0xff351778):Color(0xff6C757D),),
                      Text("Signals",style: TextStyle(color: _selectedIndex==1? Color(0xff351778):Color(0xff6C757D),),)
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    _onItemTapped(2);
                  },
                  child:
                  CircleAvatar(
                    radius: 20.0,
                    child: ClipRRect(
                      child: SvgPicture.asset("Assets/Fab_Button_images/FabButton_pic.svg",height: 200,width: 200,),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
//                   Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
// gradient: LinearGradient(
//   begin: Alignment.topCenter ,
//   end: Alignment.bottomCenter,
//
//   colors: [
//     Color(0xff2A145C),
//     Color(0xffF401898)
//
//   ]
// )
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.compare_arrows,color: Colors.white,)
//                       ],
//                     ),
//                   ),



                GestureDetector(
                  onTap: (){
                    _onItemTapped(3);
                  },
                  child: Column(
                    children: [
                      Icon(Icons.show_chart
                        ,color: _selectedIndex==3? Color(0xff351778):Color(0xff6C757D),),
                      Text("Market",
                        style: TextStyle(color: _selectedIndex==3? Color(0xff351778):Color(0xff6C757D),),)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    _onItemTapped(4);
                  },
                  child: Column(
                    children: [
                      Icon(Icons.wallet_outlined,color: _selectedIndex==4? Color(0xff351778):Color(0xff6C757D),),
                      Text("Wallet",style: TextStyle(color: _selectedIndex==4? Color(0xff351778):Color(0xff6C757D),),)
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}