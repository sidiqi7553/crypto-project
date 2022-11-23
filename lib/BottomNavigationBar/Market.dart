
import 'package:flutter/material.dart';

import '../Common/AppColor.dart';
import '../Common/BottomSheet.dart';
import '../Common/FontTemplate.dart';
import '../Common/Home_Container_Template.dart';
import '../Market_TabBar_View/Favorite.dart';
import '../Market_TabBar_View/Gainer.dart';
import '../Market_TabBar_View/Looser.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  int groupValue1 = 0;
  int groupValue2 = 0;
  int groupValue3 = 0;
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(

        appBar: PreferredSize(

            child: AppBar(
leadingWidth: 0,

            leading: Container(),
            title: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      AppFontTemplate(text: "Market is Down",SizeofFont: 20,textcolor: Colors.black,),
                      SizedBox(width: 2,),
                      AppFontTemplate(text: "- 11.17%",SizeofFont: 20,textcolor: Colors.red,),
                    ],
                  ),
                  SizedBox(height: 2,),
                  AppFontTemplate(text: "In the past 24 hours", SizeofFont: 13,textcolor: Colors.grey,),



                ],
              ),
            ),
            actions: [

              IconButton(
                  onPressed: (){
                    showSearch(context: context, delegate: MydelegateSearch());
                  },
                  icon: Icon(Icons.search,color: Colors.black,)
              ),
            ],
            backgroundColor: Colors.white,


              bottom: PreferredSize(

                preferredSize: Size.fromWidth(MediaQuery.of(context).size.width),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppFontTemplate(text: "Coins", SizeofFont: 20),
                          GestureDetector(
                            onTap: (){
                              bottomsheet(context);
                            },
                            child: Container(
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1,color: Color(0xfff2eaea)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppFontTemplate(text: "Market- INR", SizeofFont: 10,textcolor: Colors.grey,),
                                  Icon(Icons.arrow_drop_down_outlined,color: Colors.grey ,size: 15,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48.0),
                      child: TabBar(
                          indicatorColor: HomeColor.Light,
                          labelColor: HomeColor.Light,
                          unselectedLabelColor: Colors.grey,
                          indicatorSize:TabBarIndicatorSize.tab ,

                          tabs: [

                                        Tab(
                          text: 'Gainer',
                        ),
                        Tab(
                          text: 'Looser',
                        ),
                        Tab(
                          text: 'Favourites',
                        ),

                      ]),
                    ),
                  ],
                ),
              ),
        ), preferredSize: Size.fromHeight(150)),
  body: TabBarView(

    children: [

      Gainer(),
      Looser(),
      Favorite(),

    ],
  ),
      ),
    );
  }
}

void bottomsheet(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (BuildContext c) {
        int groupValue1 = 0;
        return Bottom_Sheet();
      });


}
class MydelegateSearch  extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context)=> [
  IconButton(
  onPressed: (){
    if
    (query.isEmpty){
      close(context, null);
    }
    else{
      query =" ";
    }
  },
  icon: Icon(Icons.clear),
  ),

  ];
  @override
  Widget? buildLeading(BuildContext context) {}

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
late VoidCallback onTap;
  @override
  Widget buildSuggestions(BuildContext context)  {
    List suggestions =[
      Home_Container_Template(
        title: "Bitcoin",
        subtitle: "BTC",
        image: Image.asset(
            'Assets/Home_images/Coin_and_Graph_images/BitCoin/BitCoin.png'),
        amount: "₹2,509.75",
        percent: 9.77,
        graphImagePath:
        "Assets/Home_images/Coin_and_Graph_images/BitCoin/BitCoin_Graph.svg",
      ),
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


    ];
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context , index) {
          final suggestion = suggestions[index];

          return Container(
            child: suggestion,

          );
    }
    );

  }
}
