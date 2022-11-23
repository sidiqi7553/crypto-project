
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../Common/AppColor.dart';
import '../../Common/FontTemplate.dart';
import 'Create_New_Password.dart';

class Pin_Put extends StatefulWidget {
  const Pin_Put({Key? key}) : super(key: key);

  @override
  State<Pin_Put> createState() => _Pin_PutState();
}

class _Pin_PutState extends State<Pin_Put> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Color(0xffedeaea),
      border: Border.all(color: HomeColor.Light),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  final focusedPinTheme = PinTheme(
    width: 56,
    height: 56,
    decoration: BoxDecoration(
      color:Colors.purple.shade100,
      border: Border.all(color: Colors.purple.shade100),
      borderRadius: BorderRadius.circular(8),),

  );
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: SingleChildScrollView(child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 30,
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
                text: "Forgot Password",
                SizeofFont: 20,
                textcolor: Colors.black,
                WeightofFont: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 200,
            ),

            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FontTemplate(text: "Code has been Sent to +1 111*******99", SizeofFont: 15)
                ],
              ),
            ),
            SizedBox(height: 35,),
            Pinput(

              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              validator: (s) {
                if (s == null || s.isEmpty) {
                  return 'This field is required';
                }
                return s == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),

            SizedBox(height: 50,),

            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  FontTemplate(text: "Resend code in", SizeofFont: 16,textcolor: Colors.black,),
                  SizedBox(width: 3,),
                  FontTemplate(text: "55", SizeofFont: 16,textcolor: AppColor.yellow,WeightofFont: FontWeight.bold,),
                  SizedBox(width: 5,),
                  FontTemplate(text: "s", SizeofFont: 16,textcolor: Colors.black,),

                ],
              ),
            ),

            SizedBox(height: 150,),

            GestureDetector(
              onTap: (){
                if (!_formKey.currentState!.validate())
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Got your name '),
                    ),
                  );
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Create_New_Paasword()));
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
                  child: FontTemplate(text: "Verify", SizeofFont: 15,textcolor: Colors.white,),
                ),
              ),
            ),

          ],
        ),
      ),),
    ));
  }
}
