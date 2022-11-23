import 'package:flutter/material.dart';

import '../Common/Home_Container_Template.dart';

class Gainer extends StatefulWidget {
  const Gainer({Key? key}) : super(key: key);

  @override
  State<Gainer> createState() => _GainerState();
}

class _GainerState extends State<Gainer> {
  @override
  Widget build(BuildContext context) {
    return

    Column(
      children: [
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
      ],
    )

      ;
  }
}
