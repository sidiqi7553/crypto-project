
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

import '../../Common/AppColor.dart';
import '../../Common/FontTemplate.dart';
import '../Sign_in/Log_in.dart';

class Profile_info extends StatefulWidget {
  const Profile_info({Key? key}) : super(key: key);

  @override
  State<Profile_info> createState() => _Profile_infoState();
}

class _Profile_infoState extends State<Profile_info> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<String> _locations = ['Male', 'Female', 'Other']; // Option 2

  String? _selectedLocation2; // Option 2
  File? _image;

  Future getimage(ImageSource source) async {
    final image = await ImagePicker.platform.getImage(source: source);
    if (image == null) return;

    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    final imageTemporary = File(croppedFile!.path);
    setState(() {
      this._image = imageTemporary;
    });
  }
  late SingleValueDropDownController _cnt;


  @override
  void initState() {
    _cnt = SingleValueDropDownController();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(


      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(


            children: [
              SizedBox(height: 30,),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back,color: Colors.black,),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                title:FontTemplate(text: "Fill Your Profile", SizeofFont: 20,textcolor: Colors.black,WeightofFont: FontWeight.bold,) ,
              ),

             Stack(
               alignment: Alignment.bottomRight,
               clipBehavior: Clip.none,
               children: [ Container(
                 margin: EdgeInsets.only(top: 20),
                 height: 140,
                 width: 140,
                 decoration: BoxDecoration(
                   color: Color(0xffe8e8f2),
                   shape: BoxShape.circle,
                 ),
                 child: ClipOval(
                   child: SizedBox.fromSize(
                     size: Size.fromRadius(80),
                     child: _image != null? Image.file(_image!, height: 100,width: 100, fit: BoxFit.fill,) : Icon(Icons.person,size: 90,color: Colors.grey,),
                   ),
                 ),
               ),
                 PopupMenuButton(
                   position: PopupMenuPosition.under,
                   itemBuilder: (Context) {
                     return [
                       PopupMenuItem(
                         child: TextButton(
                           onPressed: () => getimage(ImageSource.gallery),
                           child: Text("Choose from gallery"),
                         ),
                       ),
                       PopupMenuItem(
                         child: TextButton(
                           onPressed: () => getimage(ImageSource.camera),
                           child: Text("Camera"),
                         ),
                       ),
                       PopupMenuItem(
                         child: TextButton(
                           onPressed: () {
                             setState(() {
                               _image = null;
                               Navigator.pop(context);
                             });
                           },
                           child: Text("Remove"),
                         ),
                       ),
                     ];
                   },
                   child: Container(
                     height: 30,
                     width: 30,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: AppColor.yellow,
                     ),
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.edit,color: Colors.white,)
                       ],
                     ),
                   )
                 ),
               ],
             ),
              SizedBox(height: 22,),
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  child: TextFormField(

                    keyboardType: TextInputType.emailAddress,

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),
                      MinLengthValidator(2,
                          errorText:
                          "Password must contains more than 3 characters"),
                      MaxLengthValidator(25, errorText: "Not more than 24 characters")
                    ]),
                    decoration: InputDecoration(
                      focusColor: AppColor.yellow,
                      focusedBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(
                              color:HomeColor.Light)),
                      fillColor: Color(0xfff2eaea).withOpacity(0.3),
                      filled: true,

                      hintText: 'Full Name',
                      contentPadding: EdgeInsets.only(left: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),

                    ),

                  ),
                ),
              ),
              SizedBox(height: 22,),
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  child: TextFormField(

                    keyboardType: TextInputType.emailAddress,

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),
                      MinLengthValidator(2,
                          errorText:
                          "Password must contains more than 3 characters"),
                      MaxLengthValidator(25, errorText: "Not more than 24 characters")
                    ]),
                    decoration: InputDecoration(
                      focusColor: AppColor.yellow,
                      focusedBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(
                              color: HomeColor.Light)),
                      fillColor: Color(0xfff2eaea).withOpacity(0.3),
                      filled: true,

                      hintText: 'Nick Name',
                      contentPadding: EdgeInsets.only(left: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),

                    ),

                  ),
                ),
              ),
              SizedBox(height: 22,),
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
                      if (!RegExp('^([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0]?[1-9]|[1][0-2])[./-]([0-9]{4})').hasMatch(value)) {
                        return "Please enter a valid Format";
                      }
                    },
                    decoration: InputDecoration(
                      focusColor: AppColor.yellow,
                      focusedBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(
                              color: HomeColor.Light)),
                      fillColor: Color(0xfff2eaea).withOpacity(0.3),
                      filled: true,

                      hintText: 'dd/mm/yyyy',
                      contentPadding: EdgeInsets.only(left: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
suffixIcon: Icon(Icons.calendar_month,)
                    ),

                  ),
                ),
              ),
             SizedBox(height: 22,),
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
                          BorderSide(width: 2, color: HomeColor.Light)),
                      fillColor: Color(0xfff2eaea).withOpacity(0.3),
                      filled: true,
                      suffixIcon: Icon(
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
              SizedBox(height: 22,),
              Container(
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.87,



                child: IntlPhoneField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    focusColor: AppColor.yellow,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide:
                        BorderSide(width: 2, color: HomeColor.Light)),
                    fillColor: Color(0xfff2eaea).withOpacity(0.3),
                    filled: true,

                    hintText: 'Phone Number',
                    contentPadding: EdgeInsets.only(left: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              ),

              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.87,
                  child:
                  TextFormField(


                    keyboardType: TextInputType.emailAddress,

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: MultiValidator([
                      RequiredValidator(errorText: "Required"),

                    ]),
                    decoration: InputDecoration(
                      focusColor: AppColor.yellow,
                      focusedBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(
                              color: HomeColor.Light)),
                      fillColor: Color(0xfff2eaea).withOpacity(0.3),
                      filled: true,

                      hintText: 'Gender',
                      contentPadding: EdgeInsets.only(left: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
suffixIcon: Icon(Icons.arrow_drop_down)
                    ),

                  ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Log_in()));
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

            ],
          ),
        ),
      ),
    ));
  }
}
