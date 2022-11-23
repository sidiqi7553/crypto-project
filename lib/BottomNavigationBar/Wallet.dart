import 'package:flutter/material.dart';

import '../Common/FontTemplate.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FontTemplate(text: "Wallet", SizeofFont: 35,textcolor: Colors.black,),

          ],
        ),
      ),

    );
  }
}
