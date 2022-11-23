
import 'package:flutter/material.dart';

import '../../../Common/AppColor.dart';
import '../../../Common/FontTemplate.dart';
import '../../Botcoin_page.dart';
class Send_Crypto extends StatefulWidget {
  const Send_Crypto({Key? key}) : super(key: key);

  @override
  State<Send_Crypto> createState() => _Send_CryptoState();
}

class _Send_CryptoState extends State<Send_Crypto> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [ ListTile(
              leading: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Bitcoin_page()));
                  },
                  child: Icon(Icons.arrow_back_ios)),
              title: AppFontTemplate(text: "Send Bitcoin", SizeofFont: 20),
            ),
              Container(
                height: 85,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 18, right: 18, top: 15, bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: kElevationToShadow[1],
                    color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: CircleAvatar(
                              radius: 20.0,
                              child: ClipRRect(
                                child: Image.asset(
                                  'Assets/Home_images/Coin_and_Graph_images/BitCoin/BitCoin.png',
                                  height: 150,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppFontTemplate(
                                text: "Bitcoin",
                                SizeofFont: 18,
                                textcolor: Colors.black,
                              ),
                              AppFontTemplate(
                                text: "BTC",
                                SizeofFont: 14,
                                textcolor: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 17.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            AppFontTemplate(
                              text: "Available Balance",
                              SizeofFont: 12,
                              textcolor: Colors.grey.shade500,
                            ),
                            AppFontTemplate(
                              text: "2.23464 BTC",
                              SizeofFont: 20,
                              textcolor: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 380,
                width: double.infinity,
                margin: EdgeInsets.only(left: 18, right: 18, bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: kElevationToShadow[1],
                    color: Colors.white
              ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0,left: 20,top: 20,bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Container(
                        child: AppFontTemplate(text: "Enter Address", SizeofFont: 17 ,textcolor: Colors.black,),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width*0.65,
                            margin: EdgeInsets.only(top: 10,bottom: 20,right: 25),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.grey.shade200)
                            ),
                            child: Center(
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.top,
                                autofocus: true,
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(

                                    contentPadding: EdgeInsets.only(left: 5),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                                validator: (value) {
                                  if (value!.isNotEmpty && value.length > 34) {
                                    return null;
                                  } else if (value.length < 34 && value.isNotEmpty) {
                                    return 'Invalid Address';
                                  } else {
                                    return 'give your Address';
                                  }
                                },
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: (){
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                              },
                              child: Icon(Icons.qr_code_scanner_rounded,color: Colors.grey.shade600,))
                        ],
                      ),
                Container(
                  child: AppFontTemplate(text: "Amount", SizeofFont: 17 ,textcolor: Colors.black,),),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 10,bottom: 20,right: 0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.grey.shade200)
                        ),
                        child: Center(
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.top,
                            autofocus: true,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(

                                contentPadding: EdgeInsets.only(left: 5),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                            validator: (value) {
                              if (value!.isNotEmpty && value.length > 34) {
                                return null;
                              } else if (value.length < 34 && value.isNotEmpty) {
                                return 'Invalid Address';
                              } else {
                                return 'give your Address';
                              }
                            },
                          ),
                        ),
                      ),
                      Container(
                        child: AppFontTemplate(text: "Note", SizeofFont: 17 ,textcolor: Colors.black,),),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 10,bottom: 20,right: 0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.grey.shade200)
                        ),
                        child: Center(
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.top,
                            autofocus: true,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(

                                contentPadding: EdgeInsets.only(left: 5),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                            validator: (value) {
                              if (value!.isNotEmpty && value.length > 34) {
                                return null;
                              } else if (value.length < 34 && value.isNotEmpty) {
                                return 'Invalid Address';
                              } else {
                                return 'give your Address';
                              }
                            },
                          ),
                        ),
                      ),
                      AppFontTemplate(text: "Transaction fees: 0.0006 BTC", SizeofFont: 13,textcolor: Colors.grey,)
                      ,
                      SizedBox(height: 10,),
                      AppFontTemplate(text: "Min: 0.00061 BTC - Max: 2.0006 BTC", SizeofFont: 13,textcolor: Colors.grey,)

                    ],
                  ),
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
                margin: EdgeInsets.only(top: 60,right: 15,left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HomeColor.Light,
                ),
                child: Center(
                  child: AppFontTemplate(text: "Send BTC", SizeofFont: 20,textcolor: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
