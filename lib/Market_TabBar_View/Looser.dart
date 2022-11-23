import 'package:flutter/material.dart';

import '../Common/Home_Container_Template.dart';
class Looser extends StatefulWidget {
  const Looser({Key? key}) : super(key: key);

  @override
  State<Looser> createState() => _LooserState();
}

class _LooserState extends State<Looser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          title: "Dai",
          subtitle: "Dai",
          image: Image.asset(
              'Assets/Home_images/Coin_and_Graph_images/Dai.png'),
          amount: "₹73.03",
          percent: -16.58,
          graphImagePath:
          "Assets/Home_images/Coin_and_Graph_images/Dai_graph.svg",
        ),

      ],
    );
  }
}
