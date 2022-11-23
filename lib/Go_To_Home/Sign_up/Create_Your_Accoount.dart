
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Common/AppColor.dart';
import '../../Common/FontTemplate.dart';
import '../Sign_in/Log_in.dart';
import 'Profile_info.dart';

class Create_Your_Account extends StatefulWidget {
  const Create_Your_Account({Key? key}) : super(key: key);

  @override
  State<Create_Your_Account> createState() => _Create_Your_AccountState();
}

class _Create_Your_AccountState extends State<Create_Your_Account> {
  TextEditingController tectec = TextEditingController();
bool Value = false;
  bool _obsecure = true;

  bool? checkedvalue = false;
  FocusNode _onfocus = FocusNode();

  Color _color = Colors.grey;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                height: 34,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: ListTile(
                  leading: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 40),
                child: FontTemplate(
                  text: "Create Your Account",
                  SizeofFont: 41,
                  WeightofFont: FontWeight.bold,
                  textcolor: Colors.black,
                ),
              ),

              SizedBox(
                height: 40,
              ),
//
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      // Check if this field is empty
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }

                      // using regular expression
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return "Please enter a valid email address";
                      }
                    },
                    decoration: InputDecoration(
                      focusColor: AppColor.yellow,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(width: 2, color: AppColor.yellow)),
                      fillColor: Color(0xfff2eaea).withOpacity(0.3),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email_rounded,

                        // color: Color.fromARGB(255, 122, 122, 122),
                      ),
                      hintText: 'Email',
                      contentPadding: EdgeInsets.only(left: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                    ),
                    // obscureText: _obsecure,
                  ),
                ),
              ),
              SizedBox(height: 16,),
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
                            width: 2,
                              color: HomeColor.Light),),
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

              SizedBox(height: 10,),
              Container(
                height: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Checkbox(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      side: BorderSide(color: AppColor.yellow,width: 3),
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
   SizedBox(width: 8,),
                    FontTemplate(text: 'Remember me', SizeofFont: 15),

                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  if (!_formKey.currentState!.validate())
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Got your name '),
                      ),
                    );
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_info()));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*1,
                  margin: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.yellow,
                  ),
                  child: Center(
                    child: FontTemplate(text: "Sign up", SizeofFont: 15,textcolor: Colors.white,),
                  ),
                ),
              ),
          SizedBox(height: 30,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20,right: 9),
                height: 1,
                width: MediaQuery.of(context).size.width*0.20,
                color: Color(0xffE1E1E1),
              )
              ,

              FontTemplate(text: 'or Conitnue With', SizeofFont: 15,textcolor: Color(0xff747474),),
              Container(
                margin: EdgeInsets.only(left: 9,right: 18),
                height: 1,
                width: MediaQuery.of(context).size.width*0.20,
                color: Color(0xffE1E1E1),
              ),

            ],
          ),
        SizedBox(height: 15,),

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.20,
              margin: EdgeInsets.only(top: 15,bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color: Color(0xffE1E1E1),)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('Assets/lets_in_Images/icons8-facebook.svg',height: 30,)
                ],
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.20,
              margin: EdgeInsets.only(left: 15,top: 15,bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1,color: Color(0xffE1E1E1),)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('Assets/lets_in_Images/icons8-google.svg',height: 30,)
                ],
              ),
            ),Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.20,
              margin: EdgeInsets.only(left: 15,top: 15,
              bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1,color: Color(0xffE1E1E1),)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('Assets/lets_in_Images/icons8-apple-logo.svg',height: 30,)
                ],
              ),
            ),
          ],
        ),

              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FontTemplate(text: "Already Have an Account?", SizeofFont: 12,textcolor: Colors.blueGrey,),
                    SizedBox(width: 8,),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Log_in()));
                        },
                        child: FontTemplate(text: "Sign in", SizeofFont: 15,textcolor: AppColor.yellow,))
                  ],
                ),
              ),


            ]
          ),
        ),
      ),
    ));
  }
}
