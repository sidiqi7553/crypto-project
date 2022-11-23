
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Common/FontTemplate.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("Assets/Market_Favourite_images/Favourites.svg"),
          SizedBox(height: 10,),
          AppFontTemplate(text: "Special place for Favorite coins", SizeofFont: 20,textcolor: Colors.black,),
          SizedBox(height: 10,),
          AppFontTemplate(text: "Add you favorite coins and check here easily ", SizeofFont: 15,textcolor: Colors.grey,),
        ],

      ),
    );
  }
}
