
import 'package:flutter/material.dart';

import 'FontTemplate.dart';

class Details_Expand_Template extends StatelessWidget {
   Details_Expand_Template({
     Key? key,
   required this.Target,
   required this.Amount,
   required this.Percent
   }) : super(key: key);
String Target;
String Amount;
String Percent;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30,
      margin: EdgeInsets.only(left: 15,right: 15,top: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade200),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child:   Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppFontTemplate(text: Target, SizeofFont: 12,WeightofFont: FontWeight.bold,),
            AppFontTemplate(text: Amount, SizeofFont: 12,WeightofFont: FontWeight.bold,),
            AppFontTemplate(text: Percent, SizeofFont: 12,WeightofFont: FontWeight.bold,),

          ],
        ),
      ),
    ) ;
  }
}
