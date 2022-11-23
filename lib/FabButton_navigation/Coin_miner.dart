import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:crypto_project/Common/AppColor.dart';
import 'package:crypto_project/Common/FontTemplate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Coin_Miner extends StatefulWidget {
  const Coin_Miner({Key? key}) : super(key: key);

  @override
  State<Coin_Miner> createState() => _Coin_MinerState();
}

class _Coin_MinerState extends State<Coin_Miner> {
  List<Widget> page = [
    Container(
      child: Center(
        child: AppFontTemplate(text: "Your current status is standerd", SizeofFont: 15,textcolor: Colors.black,),
      ),
    ),
    GestureDetector(
        onTap: (){},
        child: Container(
          child: Center(
            child: AppFontTemplate(text: "want to upgrade your speed", SizeofFont: 15,textcolor: HomeColor.Light,),
          ),
        )),
    GestureDetector(
        onTap: (){},
        child: Container(
          child: Center(
            child: AppFontTemplate(text: "want to upgrade your speed", SizeofFont: 15,textcolor: HomeColor.Light,),
          ),
        )),
    GestureDetector(
        onTap: (){},
        child: Container(
          child: Center(
            child: AppFontTemplate(text: "want to upgrade your speed", SizeofFont: 15,textcolor: HomeColor.Light,),
          ),
        )),
    GestureDetector(
        onTap: (){},
        child: Container(
          child: Center(
            child: AppFontTemplate(text: "want to upgrade your speed", SizeofFont: 15,textcolor: HomeColor.Light,),
          ),
        )),
    GestureDetector(
        onTap: (){},
        child: Container(
          child: Center(
            child: AppFontTemplate(text: "want to upgrade your speed", SizeofFont: 15,textcolor: HomeColor.Light,),
          ),
        )),
    GestureDetector(
        onTap: (){},
        child: Container(
          child: Center(
            child: AppFontTemplate(text: "want to upgrade your speed", SizeofFont: 15,textcolor: HomeColor.Light,),
          ),
        )),
  ];
  int select =0;
  bool _select = true;
  bool viewVisible = true;

  CountDownController _controller = CountDownController();
  bool _isPause = false;
  bool _start = false;
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            ListTile(
              horizontalTitleGap: MediaQuery.of(context).size.width * 0.2,
              leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
              title: AppFontTemplate(text: "CryptoMiner ", SizeofFont: 15),
              trailing: AppFontTemplate(text: "Standerd", SizeofFont: 12),
            ),
            Container(
              child: Center(
                child: _start == false
                    ? AppFontTemplate(text: "Tap to mine", SizeofFont: 12)
                    : AppFontTemplate(
                        text:
                            "fjkhfiuhiuhihuihixjhieifhbcjhiueiibcjudu8uu832ur98uufubufuhf",
                        SizeofFont: 12),
              ),
            ),
            _start == false
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _start = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 60),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: HomeColor.Light,
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        "Assets/Fab_Button_images/Crypto_miner (1).svg",
                      )),
                    ),
                  )
                : CircularCountDownTimer(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    duration: 10,
                    fillColor: HomeColor.Light,
                    ringColor: Colors.white,
                    controller: _controller,
                    backgroundColor: Colors.grey.shade200,
                    strokeWidth: 5.0,
                    strokeCap: StrokeCap.butt,
                    isTimerTextShown: true,
                    isReverse: true,
                    onComplete: () {
                      Alert(
                              context: context,
                              title: 'Done',
                              style: AlertStyle(
                                isCloseButton: true,
                                isButtonVisible: false,
                                titleStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0,
                                ),
                              ),
                              type: AlertType.success)
                          .show();
                      setState(() {
                        _start = false;
                      });
                    },
                    textStyle: TextStyle(fontSize: 50.0, color: Colors.black),
                  ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          AppFontTemplate(
                            text: "0.00006569",
                            SizeofFont: 20,
                            textcolor: HomeColor.Light,
                            WeightofFont: FontWeight.bold,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          AppFontTemplate(
                            text: "BTC",
                            SizeofFont: 20,
                            textcolor: Colors.grey,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          AppFontTemplate(
                            text: "=1.56",
                            SizeofFont: 13,
                            textcolor: Colors.black,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          AppFontTemplate(
                            text: "USDT",
                            SizeofFont: 13,
                            textcolor: Colors.grey.shade700,
                          ),
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade700),
                        child: Center(
                          child: AppFontTemplate(
                            text: "WithDraw (MIN 10 USDT)",
                            SizeofFont: 12,
                            textcolor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: AppFontTemplate(
                text: "Enhance your Mining",
                SizeofFont: 15,
              ),
              trailing: InkWell(
                onTap: () {
                  setState(() {
                    viewVisible = !viewVisible;
                  });
                },
                child: Icon(
                  viewVisible
                      ? Icons.expand_more_outlined
                      : Icons.expand_less_outlined,
                ),
              ),
            ),
            Visibility(
              visible: viewVisible,
              child: Column(
                children: [
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppFontTemplate(
                            text: "0 of your friends are inactive",
                            SizeofFont: 13,
                            textcolor: Colors.black,
                          ),
                          AppFontTemplate(
                            text:
                                "Remind them about Miner's capabilties and get 15% of the funds that they mine and withdraw",
                            SizeofFont: 13,
                            textcolor: Colors.black,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: AppColor.yellow,
                            ),
                            child: Center(
                              child: FontTemplate(
                                text: "Ping Friends",
                                SizeofFont: 15,
                                textcolor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff41199A),
                          Color(0xff1e035b),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AppFontTemplate(
                            text:
                                "Refer a friend and get 15% of mined funds they withdraw",
                            SizeofFont: 16,
                            textcolor: Colors.white,
                          ),
                          Stack(
                            clipBehavior: Clip.hardEdge,
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  color: Color(0xff41199A),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.people_alt_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  color: Color(0xff41199A),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.people_alt_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ListView.builder(

                      itemCount: contents.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              current = index;
                            });
                            print(context);
                          },
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.35,
                            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(8),
                                color: current==index? Colors.white
                                    : Colors.purple.shade100),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8),
                              child: Row(
                                children: [
                                  Container(
                                      height: 30,
                                      width: 30,
                                      margin: EdgeInsets.only(right: 7),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: contents[index].color ),
                                      child: Icon(
                                        contents[index].Icon,size: 20,
                                      )),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AppFontTemplate(text: contents[index].title, SizeofFont: 12),
                                      AppFontTemplate(
                                          text: contents[index].subtitle, SizeofFont: 12),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(bottom: 28.0, left: 10),
                                    child:
                                    current==index?
                                    Icon(
                                      Icons.check_circle,
                                      size: 15,
                                    ):
                                    Container(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                    height:MediaQuery.of(context).size.height* 0.05,child: page[current]),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 30,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppFontTemplate(
                      text: "Mining speed",
                      SizeofFont: 13,
                      WeightofFont: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ListView.builder(

                      itemCount: contents.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              current = index;
                            });
                            print(context);
                          },
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.35,
                            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(8),
                                color: current==index? Colors.white
                                    : Colors.purple.shade100),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8),
                              child: Row(
                                children: [
                                  Container(
                                      height: 30,
                                      width: 30,
                                      margin: EdgeInsets.only(right: 7),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: contents[index].color ),
                                      child: Icon(
                                        contents[index].Icon,size: 20,
                                      )),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AppFontTemplate(text: contents[index].title, SizeofFont: 12),
                                      AppFontTemplate(
                                          text: contents[index].subtitle, SizeofFont: 12),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(bottom: 28.0, left: 10),
                                    child:
                                    current==index?
                                    Icon(
                                      Icons.check_circle,
                                      size: 15,
                                    ):
                                        Container(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                    height:MediaQuery.of(context).size.height* 0.05,child: page[current]),
              ],
            ),
            SizedBox(
              height: 25,
            ),
          ]),
        ),
      ),
    );
  }
}
class Miningspeed {
  IconData Icon;
  String title;
  String subtitle;
  bool? check;
  Color? color;
  // String discription;

  Miningspeed({required this.Icon,
    required this.title,
    required this.subtitle,
    this.check,
    this.color,
  });
}
List<Miningspeed> contents = [
  Miningspeed(
    title: 'x0.5',
    subtitle: "standerd",
    Icon: Icons.spa_outlined,
    color: Colors.grey



    // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

  ),
  Miningspeed(
    title: 'x1',
    subtitle: "gold      ",
      Icon: Icons.grid_goldenratio,
color: Colors.orangeAccent
    //discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

  ),
  Miningspeed(
    title: 'x3',
    subtitle: "platinum",
      Icon: Icons.water_drop_outlined
    // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
,color: Colors.green
  ),
  Miningspeed(
    title: 'x12',
    subtitle: "Diamond",
      Icon: Icons.diamond_outlined
    // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
,color: Colors.blue
  ),
  Miningspeed(
    title: 'x38',
    subtitle: "vip1        ",
      Icon: Icons.book_outlined,
    color: Colors.tealAccent
    // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

  ),
  Miningspeed(
    title: 'x86',
    subtitle: "vip2        ",
      Icon: Icons.water_drop_outlined,
    color: Colors.redAccent
    // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

  ),
  Miningspeed(
    title: 'x530',
    subtitle: "vip3        ",
      Icon: Icons.water_drop_outlined,
    color: Colors.cyan
    // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

  ),
];