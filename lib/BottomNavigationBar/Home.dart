
import 'package:crypto_project/Common/AppColor.dart';
import 'package:crypto_project/Common/FontTemplate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Common/Home_Container_Template.dart';
import '../Home_Navigation/Botcoin_page.dart';
import '../Home_Navigation/News_&_Events.dart';
import '../Home_Navigation/Profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool viewVisible = true ;
  bool viewVisible2 = true ;
  bool viewVisible3 = true ;
int Current=0;
  void showWidget(){
    setState(() {
      viewVisible = true ;
    });
  }

  void hideWidget(){
    setState(() {
      viewVisible = false ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 225,
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap:
                    (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.45,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff41199A),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppFontTemplate(
                            text: "Welcome Tahir Saeed",
                            SizeofFont: 15,
                            textcolor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> News_and_Events()));
                    }
                    ,
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 1,
                      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff3B1888),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppFontTemplate(
                            text: "See Latest News",
                            SizeofFont: 25,
                            textcolor: Colors.white,
                          ),
                          SvgPicture.asset("Assets/Home_images/Home_News.svg",height: 120,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              horizontalTitleGap: -6,
              dense: true,
              leading: Icon(Icons.local_fire_department_rounded,color: Colors.orange,),
              title: FontTemplate(text: "24h Liquidations",SizeofFont: 17,),
              trailing: InkWell(
                onTap: (){
                   setState((){
                     viewVisible = !viewVisible;
                     });
                },
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: HomeColor.Light,width: 1),

                  ),
                  child: Center(
                    child: FontTemplate(text: viewVisible? "Hide":"Show",SizeofFont: 15,textcolor: HomeColor.Light,),
                  ),
                ),
              ),
            ),

            Visibility(
                visible:viewVisible ,
                child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
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
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FontTemplate(text: "CRYPTOMEETER.io", SizeofFont: 12,WeightofFont: FontWeight.bold,),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
AppFontTemplate(text: "Longs", SizeofFont: 10,WeightofFont: FontWeight.bold,),
                              AppFontTemplate(text: "8,606,096", SizeofFont: 12,WeightofFont: FontWeight.bold,)
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width*0.175,
                                color: Colors.green,
                              ),
                              Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width*0.175,
                                color: Colors.red,
                              ),
                            ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppFontTemplate(text: "5,723,591", SizeofFont: 12,WeightofFont: FontWeight.bold,),
                              AppFontTemplate(text: "Shorts", SizeofFont: 10,WeightofFont: FontWeight.bold,),


                            ],
                          ),
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
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppFontTemplate(text: "ALTERNATIVE", SizeofFont: 15,),
                          SizedBox(height: 10,),
                          AppFontTemplate(text: "Fear & Greed Index", SizeofFont: 12,WeightofFont: FontWeight.bold,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppFontTemplate(text: "Fear", SizeofFont: 15,textcolor: HomeColor.Light,),
                              AppFontTemplate(text: "45", SizeofFont: 15,textcolor: HomeColor.Light,),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
            ),

            ListTile(
              horizontalTitleGap: -6,
              dense: true,
              leading: CircleAvatar(

                radius: 14.0,
                child: ClipRRect(
                  child: Center(
                    child: Text("M"),
                  ),
                  borderRadius: BorderRadius.circular(50.0),

                ),
              ),
              title: FontTemplate(text: "Long & Short Ratio",SizeofFont: 17,),
              trailing: InkWell(
                onTap: (){
                  setState((){
                    viewVisible2 = !viewVisible2;
                  });
                },
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: HomeColor.Light,width: 1),

                  ),
                  child: Center(
                    child: FontTemplate(text: viewVisible2? "Hide":"Show",SizeofFont: 15,textcolor: HomeColor.Light,),
                  ),
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Visibility(
                  visible:viewVisible2 ,
                  child:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Long_Short_Ratio_Template(title: "BINANCE", long_count: "194,080", short_count: "209,734"),
                        Long_Short_Ratio_Template(title: "BINANCE", long_count: "194,080", short_count: "209,734"),
                        Long_Short_Ratio_Template(title: "BINANCE", long_count: "194,080", short_count: "209,734"),
                        Long_Short_Ratio_Template(title: "BINANCE", long_count: "194,080", short_count: "209,734"),
                        Long_Short_Ratio_Template(title: "BINANCE", long_count: "194,080", short_count: "209,734"),
                      ],
                    ),
                  )
              ),
            ),
            ListTile(
              horizontalTitleGap: -6,
              dense: true,
              leading: CircleAvatar(

                radius: 14.0,
                child: ClipRRect(
                  child: Center(
                    child:SvgPicture.asset("Assets/Fab_Button_images/Spin wheel.svg")
                  ),
                  borderRadius: BorderRadius.circular(50.0),

                ),
              ),
              title: FontTemplate(text: "Dominance & Market cap",SizeofFont: 17,),
              trailing: InkWell(
                onTap: (){
                  setState((){
                    viewVisible3 = !viewVisible3;
                  });
                },
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: HomeColor.Light,width: 1),

                  ),
                  child: Center(
                    child: FontTemplate(text: viewVisible3? "Hide":"Show",SizeofFont: 15,textcolor: HomeColor.Light,),
                  ),
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Visibility(
                  visible:viewVisible3 ,
                  child:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [


                        Dominance_Template(title: "BTC Dominance",subtitile: "38.36%",),
                        Dominance_Template(title: "USDT dominance 24h",subtitile: "5.6%",),
                        Dominance_Template(title: "Market cap",subtitile: "1,23,444,455,",),
                        Dominance_Template(title: "USDT dominance 24h",subtitile: "5.6%",),
                      ],

                    ),
                  )
              ),
            ),

            Container(
              height: 30,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppFontTemplate(
                      text: "Trending Coins",
                      SizeofFont: 20,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Bitcoin_page()));
              },
              child: Home_Container_Template(
                title: "Bitcoin",
                subtitle: "BTC",
                image: Image.asset(
                    'Assets/Home_images/Coin_and_Graph_images/BitCoin/BitCoin.png'),
                amount: "₹2,509.75",
                percent: 9.77,
                graphImagePath:
                    "Assets/Home_images/Coin_and_Graph_images/BitCoin/BitCoin_Graph.svg",
              ),
            ),
            // ListTile(
            //   leading:Image.asset(
            //     'Assets/Home_images/Coin_and_Graph_images/Ethereum.png') ,title: Row(
            //       children: [
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text("Ethereum"),
            //             Text("ETH"),
            //           ],
            //         ),
            //         Spacer(),
            //         SvgPicture.asset("Assets/Home_images/Coin_and_Graph_images/Ethereum_graph.svg"),
            //         Spacer()
            //       ],
            //     ),trailing: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //   Text("sdhjs"),
            //   Text("sdhjs"),
            // ],),),
            Home_Container_Template(
              title: "Ethereum",
              subtitle: "ETH",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/Ethereum.png'),
              amount: "₹2,509.75",
              percent: -21.00,
              graphImagePath:
                  "Assets/Home_images/Coin_and_Graph_images/Ethereum_graph.svg",
            ),
            Home_Container_Template(
              title: "Band Protocol",
              subtitle: "Band",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/Band_Protocol.png'),
              amount: "₹553.06",
              percent: -22.97,
              graphImagePath:
                  "Assets/Home_images/Coin_and_Graph_images/Band_Protocol_Graph.svg",
            ),
            Home_Container_Template(
              title: "Cardano",
              subtitle: "ADA",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/Cardano.png'),
              amount: "₹105.06",
              percent: 16.31,
              graphImagePath:
                  "Assets/Home_images/Coin_and_Graph_images/Cardano_graph.svg",
            ),
            Home_Container_Template(
              title: "TRON ",
              subtitle: "TRX",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/TRON .png'),
              amount: "₹5.29",
              percent: -16.58,
              graphImagePath:
              "Assets/Home_images/Coin_and_Graph_images/TRON _graph.svg",
            ),
            Home_Container_Template(
              title: "Tether",
              subtitle: "USDT",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/Tether.png'),
              amount: "₹73.00",
              percent: 0.07,
              graphImagePath:
              "Assets/Home_images/Coin_and_Graph_images/Tether_graph.svg",
            ),
            Home_Container_Template(
              title: "Dogecoin",
              subtitle: "DOGE",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/Dogecoin.png'),
              amount: "₹23.39",
              percent: 21.00,
              graphImagePath:
              "Assets/Home_images/Coin_and_Graph_images/Dogecoin_graph.svg",
            ),
            Home_Container_Template(
              title: "Neo",
              subtitle: "Neo",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/Neo .png'),
              amount: "₹3,418.73",
              percent: -10.51,
              graphImagePath:
              "Assets/Home_images/Coin_and_Graph_images/Neo_Graph.svg",
            ),
            Home_Container_Template(
              title: "EOS ",
              subtitle: "EOS ",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/EOS.png'),
              amount: "₹338.69",
              percent: -11.22,
              graphImagePath:
              "Assets/Home_images/Coin_and_Graph_images/EOS_graph.svg",
            ),
            Home_Container_Template(
              title: "Binance Coin ",
              subtitle: "BNB ",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/Binance Coin.png'),
              amount: "₹19,661.52",
              percent: 13.08,
              graphImagePath:
              "Assets/Home_images/Coin_and_Graph_images/Binance Coin_Graph.svg",
            ),
            Home_Container_Template(
              title: "Uniswap ",
              subtitle: "UNI ",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/Uniswap.png'),
              amount: "₹1,348.88",
              percent: 8.68,
              graphImagePath:
              "Assets/Home_images/Coin_and_Graph_images/Uniswap_grpah.svg",
            ),
            Home_Container_Template(
              title: "Dai",
              subtitle: "Dai",
              image: Image.asset(
                  'Assets/Home_images/Coin_and_Graph_images/Dai.png'),
              amount: "₹73.03",
              percent: -16.58,
              graphImagePath:
              "Assets/Home_images/Coin_and_Graph_images/Dai_graph.svg",
            ),

            SizedBox(height: 10,),

          ],
        ),
      ),
    ));
  }
}
