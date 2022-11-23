import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Common/AppColor.dart';
import '../Common/FontTemplate.dart';

class Spin_Coupons extends StatefulWidget {
  const Spin_Coupons({Key? key}) : super(key: key);

  @override
  State<Spin_Coupons> createState() => _Spin_CouponsState();
}

class _Spin_CouponsState extends State<Spin_Coupons> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
              title: AppFontTemplate(
                text: "Spin Wheel",
                SizeofFont: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: kElevationToShadow[3],
                  color: Colors.white),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: AppFontTemplate(text: "Coupons", SizeofFont: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppFontTemplate(
                                text: "No.of Coupons Won",
                                SizeofFont: 15,
                                textcolor: Colors.grey,
                              ),
                              AppFontTemplate(
                                text: "06",
                                SizeofFont: 15,
                                textcolor: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppFontTemplate(
                                text: "Tokens won from Spin so far",
                                SizeofFont: 15,
                                textcolor: Colors.grey,
                              ),
                              AppFontTemplate(
                                text: "08",
                                SizeofFont: 15,
                                textcolor: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppFontTemplate(
                                text: "Remaining Coupons to Spin",
                                SizeofFont: 15,
                                textcolor: Colors.grey,
                              ),
                              AppFontTemplate(
                                text: "01",
                                SizeofFont: 15,
                                textcolor: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.57,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: kElevationToShadow[3],
                    color: Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset("Assets/Fab_Button_images/Spin wheel.svg",height: 260,width: 230,),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.5,
                        margin: EdgeInsets.symmetric(vertical: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HomeColor.Light,
                        ),
                        child: Center(
                          child: AppFontTemplate(
                            text: "Click Here to Spin ",
                            SizeofFont: 20,
                            textcolor: Colors.white,
                          ),
                        ),
                      ),
                      Text(

                        "Free Tokens will be instantly credited to your Giottus \nAccount when you win. You can spin only once with one \n coupon. So you can come back and try your luck !",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
