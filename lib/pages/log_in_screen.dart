//import 'dart:html';

//import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/blocs/authentications_bloc.dart';
import 'package:law_chamber/pages/client_home.dart';
import 'package:law_chamber/pages/lawyer_home_page.dart';
import 'package:law_chamber/utils/Constants.dart';
import 'package:law_chamber/widgets/navigation_page.dart';
import 'package:law_chamber/widgets/sign_in_bottom_sheet.dart';
import 'package:law_chamber/widgets/google_sign_in.dart';
import 'package:law_chamber/size_config.dart';
import 'package:law_chamber/widgets/app_bar_container.dart';
import 'package:law_chamber/widgets/primary_button.dart';
import 'package:provider/provider.dart';
import 'package:zap_architecture/zap_architecture.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}
class _LogInScreenState extends State<LogInScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool success = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController userEmail = TextEditingController();
  final TextEditingController userPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
        return SafeArea(
          child: Scaffold(
            //backgroundColor: Color(0xFF00BCD4),
            body: Stack(
                children: [
                  AppbarContainer(
                    textWidget: Text(
                      "law chamber".toUpperCase(),
                      style: kAppBarTextStyle,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 1),
                    child: Container(
                      height: SizeConfig.init(context).height(0.7),
                      width: double.infinity,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Text("Login",
                                style: kLogInText,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                SizeConfig.init(context).width(0.1),
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("Email",
                                      style: kEmailSignInText,
                                    ),
                                  ),
                                  Form(
                                    key: _formKey,
                                    child: TextFormField(
                                      controller: userEmail,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        hintText: "Enter User Name",
                                      ),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "Please enter some text here";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.init(context).height(
                                        0.015),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("Password",
                                      style: kEmailSignInText,
                                    ),
                                  ),
                                  TextFormField(
                                    controller: userPassword,
                                    textAlign: TextAlign.center,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(),
                                      ),
                                      hintText: "Password",
                                    ),
                                    validator: (userPassword) {
                                      if (userPassword.isEmpty) {
                                        return "Enter correct password";
                                      }
                                      return null;
                                    },
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                        SizeConfig.init(context).height(0.021),
                                      ),
                                      child: Text(
                                        "ForgotPassword",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: PrimaryButton(
                                      color: Color(0xffF44336),
                                      widget: Center(
                                        child: Text("Login",
                                          style: kGoogleStyle,
                                        ),
                                      ),
                                    ),
                                    onTap: () async {
                                      if (_formKey.currentState.validate()) {
                                        final Response<String> response=
                                        await Provider.of<AuthenticationBLOC>(context,listen: false)
                                            .signIn(userEmail.text.trim(),userPassword.text.trim());
                                        if (response.data=="lawyer"){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>NavigationPage()));
                                        }else if(response.data=="client"){
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (context)=>ClientHome()));
                                        }
                                      }
                                    },
                                  ),
                                  SizedBox(
                                    height: SizeConfig.init(context).height(
                                        0.021),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: SizeConfig.init(context).width(
                                            0.3),
                                        child: Divider(
                                          color: Colors.black12,
                                        ),
                                      ),
                                      Text("OR"),
                                      SizedBox(
                                        width: SizeConfig.init(context).width(
                                            0.3),
                                        child: Divider(
                                          color: Colors.black12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                signInWithGoogle().then((result) {
                                  if (result != null) {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>
                                            LawyerHomePage()));
                                  }
                                });
                              },
                              child: PrimaryButton(
                                color: Color(0xffF44336),
                                widget: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: SizeConfig.init(context).width(
                                            0.080),
                                      ),
                                      child: Icon(FontAwesomeIcons.google,
                                        color: Colors.white,),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.init(context).width(
                                          0.1),
                                    ),
                                    Text(
                                      "Login With Google",
                                      style: kGoogleStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.init(context).height(0.020),
                            ),
                            PrimaryButton(
                              color: Color(0xff03A9F4),
                              widget: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: SizeConfig.init(context).width(
                                          0.080),
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.facebookSquare,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: SizeConfig.init(context).width(0.1),
                                  ),
                                  Text("Login with Facebook",
                                    style: kGoogleStyle,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.init(context).height(0.020),
                            ),
                            GestureDetector(
                              child: PrimaryButton(
                                color: Color(0xff303F9F),
                                widget: Center(
                                  child: Text("Sign Up",
                                    style: kGoogleStyle,
                                  ),
                                ),
                              ),
                              onTap: () {
                                registrationBottomSheet(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
            ),

          ),
        );
   }
  }