import 'package:flutter/material.dart';

import 'AppColor.dart';
import 'FontTemplate.dart';

class Profile_LIstTile_Template extends StatelessWidget {
   Profile_LIstTile_Template({Key? key,
   required this.LeadingIcon,
   required this.title,
   }) : super(key: key);
 IconData LeadingIcon;
 String title;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
    Padding(
    padding: const EdgeInsets.only(right: 25),

    child:ListTile(
    leading: Icon(LeadingIcon,color: HomeColor.Light,size: 30,),
    title: AppFontTemplate(text: title,SizeofFont: 20,)
    ,trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff6C757D),),
    ),
    ),
    Container(
    height: 1,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    color: Color(0xffDFE2E4),
    ),
      ],
    );
  }
}
