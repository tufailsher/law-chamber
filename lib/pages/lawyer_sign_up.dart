import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';
import 'package:law_chamber/utils/models.dart';
import 'package:law_chamber/widgets/app_bar_container.dart';
import 'package:law_chamber/widgets/navigation_page.dart';
import 'package:law_chamber/widgets/primary_button.dart';
import 'lawyer_home_page.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

class LawyerSignUp extends StatefulWidget {
  @override
  _LawyerSignUpState createState() => _LawyerSignUpState();
}

class _LawyerSignUpState extends State<LawyerSignUp> {
  TextEditingController confirmPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController chamberNumberController = TextEditingController();
  TextEditingController licenseNumberController = TextEditingController();
  String lawyer = "lawyer";
  String id;

  bool status = true;
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> uploadData() async {
    Lawyer _lawyer = Lawyer(
      email: emailController.text,
      chamberNumber: chamberNumberController.text,
      licenseNumber: licenseNumberController.text,
      type: lawyer,
      id: id,
    );

    await db.collection("userData").doc(id).set(_lawyer.toJSON());
  }

  register() async {
    if (_formKey.currentState.validate()) {
      User user = (await _auth.createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text))
          .user;
      if (user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NavigationPage()));
        id = user.uid;
        uploadData();
        emailController.clear();
        passwordController.clear();
        licenseNumberController.clear();
        chamberNumberController.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppbarContainer(
            textWidget: Text(
              "lawyer registration".toUpperCase(),
              style: kAppBarTextStyle,
            ),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Container(
              height: sizeConfig.height(0.7),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          controller: emailController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                            hintText: "Email",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Your Email is incorrect";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: sizeConfig.height(0.020)),
                        TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                            hintText: "Password",
                          ),
                          validator: (passwordController) {
                            setState(() {
                              if (passwordController.length <= 6) {
                                return "Your password is incorrect";
                              }
                            });
                            return null;
                          },
                        ),
                        SizedBox(height: sizeConfig.height(0.020)),
                        TextFormField(
                          obscureText: true,
                          controller: confirmPassword,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                            hintText: "Confirm password",
                          ),
                          validator: (val) {
                            if (val.isEmpty) return 'Empty';
                            if (val != passwordController.text)
                              return 'Not Match';
                            return null;
                          },
                        ),
                        SizedBox(height: sizeConfig.height(0.020)),
                        TextFormField(
                          controller: licenseNumberController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                            hintText: "License Number",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter some text here";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: sizeConfig.height(0.020)),
                        TextFormField(
                          controller: chamberNumberController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                            hintText: "License Number",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter some text here";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: sizeConfig.height(0.020)),
                        GestureDetector(
                          onTap: register,
                          child: PrimaryButton(
                            color: Colors.blueAccent,
                            widget: Center(
                              child: Text(
                                "Register",
                                style: kGoogleStyle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
