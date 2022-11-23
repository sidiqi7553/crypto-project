import 'dart:async';


// import 'package:crypto_gain/Home_Navigation/Home_Navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Common/AppColor.dart';
import '../../Common/FontTemplate.dart';
import '../Sign_in/Log_in.dart';

class Create_New_Paasword extends StatefulWidget {
  const Create_New_Paasword({Key? key}) : super(key: key);

  @override
  State<Create_New_Paasword> createState() => _Create_New_PaaswordState();
}

class _Create_New_PaaswordState extends State<Create_New_Paasword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController tectec = TextEditingController();
  bool Value = false;
  bool _obsecure = true;
  bool? checkedvalue = false;

  TextEditingController tectec2 = TextEditingController();
  bool _obsecure2 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Form(
         key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: FontTemplate(
                  text: "Create New Password",
                  SizeofFont: 20,
                  textcolor: Colors.black,
                  WeightofFont: FontWeight.bold,
                ),
              ),
              SvgPicture.asset(
                "Assets/Forgot_password_images/FP_pic_2.svg",
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: FontTemplate(
                    text: "Create Your New Password",
                    SizeofFont: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: tectec,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),
                      MinLengthValidator(7,
                          errorText:
                              "Password must contains more than 7 characters")
                    ]),
                    decoration: InputDecoration(
                      focusColor: AppColor.yellow,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(
                              color: HomeColor.Light)),
                      fillColor: Color(0xfff2eaea).withOpacity(0.3),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      hintText: 'Password',
                      contentPadding: EdgeInsets.only(left: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obsecure = !_obsecure;
                          });
                        },
                        child: Icon(
                          _obsecure ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    obscureText: _obsecure,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: tectec2,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),
                      MinLengthValidator(7,
                          errorText:
                              "Password must contains more than 7 characters")
                    ]),
                    decoration: InputDecoration(
                      focusColor: AppColor.yellow,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(
                              color:  HomeColor.Light)),
                      fillColor: Color(0xfff2eaea).withOpacity(0.3),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      hintText: 'Confirm Password',
                      contentPadding: EdgeInsets.only(left: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obsecure2 = !_obsecure2;
                          });
                        },
                        child: Icon(
                          _obsecure2 ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    obscureText: _obsecure2,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      side: BorderSide(color: AppColor.yellow, width: 3),
                      splashRadius: 8,
                      value: Value,
                      checkColor: Colors.white,
                      activeColor: AppColor.yellow,
                      onChanged: (val) {
                        setState(() {
                          Value = val!;
                        });
                      },
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    FontTemplate(
                      text: 'Remember me',
                      SizeofFont: 15,
                      WeightofFont: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (!_formKey.currentState!.validate())
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Got your name '),
                      ),
                    );
                  signup(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Log_in()));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 1,
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.yellow,
                  ),
                  child: Center(
                    child: FontTemplate(
                      text: "Continue",
                      SizeofFont: 15,
                      textcolor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

void signup(BuildContext context) {
  Timer (
      Duration(seconds: 3),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Log_in()));
  }
  );

  var alertDialog = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      backgroundColor: Colors.white,
      content: SingleChildScrollView(
        child: Container(
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Image(
                  image: AssetImage(
                      "Assets/Forgot_password_images/AlertBox_pic_1 (1).png"),
                  height: 150,
                  width: 200,
                ),
              ),
              FontTemplate(
                text: "Congratulations!",
                SizeofFont: 20,
                textcolor: AppColor.yellow,
                WeightofFont: FontWeight.bold,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
                child: Text(
                  "Your account is ready to use . you will be redirected to Login page in few Seconds",textAlign: TextAlign.center,
                  style: GoogleFonts.cabin(textStyle: TextStyle(
                fontSize: 15,
                color: Colors.black
                  )),
                ),
              ),
              
              Image(image: AssetImage("Assets/Forgot_password_images/AlertBox_pic_2 (1).png"),height: 150,width: 300,)
              
            ],
          ),
        ),
      ));

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
