import 'package:crypto_project/Common/FontTemplate.dart';
import 'package:flutter/material.dart';

import '../Common/Details_Expand_Template.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Details_Expand_Template(Target: "Target 1", Amount: "0.12103+", Percent: "11.32%")  ,
        Details_Expand_Template(Target: "Target 2", Amount: "0.13236+", Percent: "21.43%")  ,
        Details_Expand_Template(Target: "Target 3", Amount: "0.14339+", Percent: "33.55%")  ,
      ],
    );
  }
}
