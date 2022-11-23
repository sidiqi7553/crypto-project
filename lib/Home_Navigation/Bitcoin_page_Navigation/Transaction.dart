
import 'package:flutter/material.dart';

import '../../Common/FontTemplate.dart';
class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: GestureDetector(onTap: (){
                Navigator.pop(context);
              },
                child: Icon(Icons.arrow_back_ios),

              ),
              title: AppFontTemplate(text: "Transactions",SizeofFont: 18,),
            ),


            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 18, right: 18, top: 15, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    )
                  ],
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
                            Row(
                              children: [
                                AppFontTemplate(
                                  text: "Bitcoin /",
                                  SizeofFont: 18,
                                  textcolor: Colors.black,
                                ),
                                SizedBox(width: 7,),
                                AppFontTemplate(
                                  text: "BTC",
                                  SizeofFont: 13,
                                  textcolor: Colors.grey,
                                ),
                              ],
                            ),
                            SizedBox(height: 3,),
                            AppFontTemplate(
                              text: "Amount: 5.485 BTC",
                              SizeofFont: 11,
                              textcolor: Colors.grey,
                            ),
                            SizedBox(height: 2,),
                            AppFontTemplate(
                              text: "Price: ₹ 24.39 ",
                              SizeofFont: 11,
                              textcolor: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 17.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AppFontTemplate(
                            text: "Total:₹133.316",
                            SizeofFont: 16,
                            textcolor: Colors.black,
                          ),
                          AppFontTemplate(
                            text: "27 May, 09:28 AM",
                            SizeofFont: 13,
                            textcolor: Colors.grey,
                          ),
                          AppFontTemplate(
                            text: "Successfully Completed",
                            SizeofFont: 10,
                            textcolor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 18, right: 18, top: 15, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    )
                  ],
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
                            Row(
                              children: [
                                AppFontTemplate(
                                  text: "Bitcoin /",
                                  SizeofFont: 18,
                                  textcolor: Colors.black,
                                ),
                                SizedBox(width: 7,),
                                AppFontTemplate(
                                  text: "BTC",
                                  SizeofFont: 13,
                                  textcolor: Colors.grey,
                                ),
                              ],
                            ),
                            SizedBox(height: 3,),
                            AppFontTemplate(
                              text: "Amount: 5.485 BTC",
                              SizeofFont: 11,
                              textcolor: Colors.grey,
                            ),
                            SizedBox(height: 2,),
                            AppFontTemplate(
                              text: "Price: ₹ 24.39 ",
                              SizeofFont: 11,
                              textcolor: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 17.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AppFontTemplate(
                            text: "Total:₹133.316",
                            SizeofFont: 16,
                            textcolor: Colors.black,
                          ),
                          AppFontTemplate(
                            text: "27 May, 09:28 AM",
                            SizeofFont: 13,
                            textcolor: Colors.grey,
                          ),
                          AppFontTemplate(
                            text: "Successfully Completed",
                            SizeofFont: 10,
                            textcolor: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    ),
    );
  }
}
