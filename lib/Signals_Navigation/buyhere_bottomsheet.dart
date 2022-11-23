import 'package:flutter/material.dart'
;
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';


import '../Common/AppColor.dart';
import '../Common/FontTemplate.dart';

class BuyHere extends StatefulWidget {
  const BuyHere({Key? key}) : super(key: key);

  @override
  State<BuyHere> createState() => _BuyHereState();
}

class _BuyHereState extends State<BuyHere> {
  Future<void> _launchedTelegram(String url)async{
    if(await canLaunch(url))
    {final bool nativeAppLaunchSucceeded =await launch(url, forceSafariVC: false, universalLinksOnly: true,);
    if (!nativeAppLaunchSucceeded){await launch(url, forceSafariVC: true,);}}
  }
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                trailing: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: HomeColor.Light,
                    ),
                    child: Center(
                      child: Icon(Icons.close,color: Colors.white,),
                    ),
                  ),
                ),
              ),
              Container(

                child: Center(
                  child: AppFontTemplate(text: "LifeTime: \$700", SizeofFont: 35,WeightofFont: FontWeight.bold,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Center(child: AppFontTemplate(text: "Weekly:\$10 - Monthly:\$35 - 3 Months:\$80 - 6 Months:\$150 - 1 Year:\$225", SizeofFont: 14,)),
                ),
              ),
              Container(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppFontTemplate(
                        text: "BTC Address",
                        SizeofFont: 15,
                        WeightofFont: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,

                  ),
                  child: Row(
                    children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: CircleAvatar(
                      radius: 15.0,
                      child: ClipRRect(
                        child: Image(image: AssetImage("Assets/Home_images/Coin_and_Graph_images/BitCoin/BitCoin.png"),),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                  ),
                    ),

                      GestureDetector(
                          onTap: (){
                            Clipboard.setData(ClipboardData(text: "34HuwzDnSwxVRNCoyFCpQnRBXV2sVVmGUY"))
                                .then((value) { //only if ->
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Address copied'),
                              ),
                              ); // -> show a notification
                            });
                          },
                          child: AppFontTemplate(text: "34HuwzDnSwxVRNCoyFCpQnRBXV2sVVmGUY", SizeofFont: 12))

                    ],
                  ),
                ),
              ),
              Container(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppFontTemplate(
                        text: "USDT Address",
                        SizeofFont: 15,
                        WeightofFont: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,

                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: CircleAvatar(
                          radius: 15.0,
                          child: ClipRRect(
                            child: Image(image: AssetImage("Assets/Home_images/Coin_and_Graph_images/EOS.png"),),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),

                      GestureDetector(
                          onTap: (){
                            Clipboard.setData(ClipboardData(text: "69i57j69i59l3j0i271l3j69i60.3258j0j15"))
                                .then((value) { //only if ->
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Address copied'),
                              ),
                              ); // -> show a notification
                            });
                          },
                          child: AppFontTemplate(text: "69i57j69i59l3j0i271l3j69i60.3258j0j15", SizeofFont: 12))

                    ],
                  ),
                ),
              ),
              Container(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppFontTemplate(
                        text: "BTC Address",
                        SizeofFont: 15,
                        WeightofFont: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,

                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: CircleAvatar(
                          radius: 15.0,
                          child: ClipRRect(
                            child: Image(image: AssetImage("Assets/Home_images/Coin_and_Graph_images/BitCoin/BitCoin.png"),),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),

                      GestureDetector(
                          onTap: (){
                            Clipboard.setData(ClipboardData(text: "34HuwzDnSwxVRNCoyFCpQnRBXV2sVVmGUY"))
                                .then((value) { //only if ->
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Address copied'),
                              ),
                              ); // -> show a notification
                            });
                          },
                          child: AppFontTemplate(text: "34HuwzDnSwxVRNCoyFCpQnRBXV2sVVmGUY", SizeofFont: 12))

                    ],
                  ),
                ),
              ),
              Container(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0,top: 7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppFontTemplate(
                        text: "USDT Address",
                        SizeofFont: 15,
                        WeightofFont: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,

                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: CircleAvatar(
                          radius: 15.0,
                          child: ClipRRect(
                            child: Image(image: AssetImage("Assets/Home_images/Coin_and_Graph_images/EOS.png"),),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),

                      GestureDetector(
                          onTap: (){
                            Clipboard.setData(ClipboardData(text: "69i57j69i59l3j0i271l3j69i60.3258j0j15"))
                                .then((value) { //only if ->
                              Fluttertoast.showToast(
                                  msg: "Address copied",
                                  toastLength:Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,

                                  fontSize: 16.0);// -> show a notification
                            });
                          },
                          child: AppFontTemplate(text: "69i57j69i59l3j0i271l3j69i60.3258j0j15", SizeofFont: 12))

                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(

                              "For further information about price plan you can contact me via my telegram by tapping to the contact button below",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  _launchedTelegram('https://telegram.me/<Hamza1801>');
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: HomeColor.Light,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.10),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.telegram_outlined,color: Colors.white,),
                          AppFontTemplate(text: "Contact", SizeofFont: 15,textcolor: Colors.white,WeightofFont: FontWeight.bold,),
                        ],
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      )) ;
  }
}
