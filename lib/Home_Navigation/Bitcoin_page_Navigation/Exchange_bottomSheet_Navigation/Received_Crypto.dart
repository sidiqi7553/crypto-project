
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../Common/AppColor.dart';
import '../../../Common/FontTemplate.dart';
import '../../Botcoin_page.dart';
class Received_Crypto extends StatefulWidget {
  const Received_Crypto({Key? key}) : super(key: key);

  @override
  State<Received_Crypto> createState() => _Received_CryptoState();
}

class _Received_CryptoState extends State<Received_Crypto> {
  String quote = "34HuwzDnSwxVRNCoyFCpQnRBXV2sVVmGUY";

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Bitcoin_page()));
                  },
                  child: Icon(Icons.arrow_back_ios)),
              title: AppFontTemplate(text: "Receive Bitcoin", SizeofFont: 20),
            ),
            Container(
              height: 550,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: kElevationToShadow[1],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  CircleAvatar(
                    radius: 20.0,
                    child: ClipRRect(
                      child: Image.asset(
                        'Assets/Home_images/Coin_and_Graph_images/BitCoin/BitCoin.png',
                        height: 150,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: AppFontTemplate(text: "Scan the QR code to get Receive address", SizeofFont: 15),
                  ),
                  SizedBox(height: 15,),

                  QrImage(
                    data: "34HuwzDnSwxVRNCoyFCpQnRBXV2sVVmGUY",
                    version: QrVersions.auto,
                    size: 150.0,
                  ),
                  SizedBox(height: 20,),
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10,right: 9),
                        height: 1,
                        width: MediaQuery.of(context).size.width*0.35,
                        color: Color(0xffE1E1E1),
                      )
                      ,

                      FontTemplate(text: 'or', SizeofFont: 15,textcolor: Color(0xff747474),),
                      Container(
                        margin: EdgeInsets.only(left: 9,right: 10),
                        height: 1,
                        width: MediaQuery.of(context).size.width*0.35,
                        color: Color(0xffE1E1E1),
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),
                  AppFontTemplate(text: "Your Bitcoin Address", SizeofFont: 18,textcolor: Colors.grey.shade600,),
                  SizedBox(height: 12,),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: Colors.grey.shade300)
                    ),
                    child: Center(
                      child: AppFontTemplate(text: "34HuwzDnSwxVRNCoyFCpQnRBXV2sVVmGUY",SizeofFont: 14,),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Clipboard.setData(ClipboardData(text: quote))
                          .then((value) { //only if ->
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Address copied'),
                        ),
                        ); // -> show a notification
                      });
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.40,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade100
,border: Border.all(width: 1 ,color: HomeColor.Light),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: AppFontTemplate(text: "Copy Address", SizeofFont: 15,textcolor: HomeColor.Light,),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 5,),

            Container(
              margin: EdgeInsets.all(15),
              child: Text(

                "* Block/Time will be calculated after the transaction is generated and broadcasted",
              textAlign: TextAlign.center,
              ),
            ),

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20,right: 15,left: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HomeColor.Light,
              ),
              child: Center(
                child: AppFontTemplate(text: "Share address ", SizeofFont: 20,textcolor: Colors.white,),
              ),
            ),




          ],
        ),
      ),
    ));
  }
}
