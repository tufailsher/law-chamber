import 'package:flutter/material.dart';
import 'package:law_chamber/widgets/app_bar_container.dart';
import 'package:law_chamber/widgets/primary_button.dart';
import 'package:law_chamber/widgets/textfield_container.dart';

import '../utils/Constants.dart';
import '../size_config.dart';
class ClientSignUp extends StatefulWidget {
  @override
  _ClientSignUpState createState() => _ClientSignUpState();
}

class _ClientSignUpState extends State<ClientSignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            AppbarContainer(
              textWidget: Text(
                "client registration".toUpperCase(),
                style: kAppBarTextStyle,
              ),
            ),
            Align(
              alignment: Alignment(0,1),
              child: Container(
                height: SizeConfig.init(context).height(0.7),
                width: double.infinity,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFieldContainer(
                        textField: TextField(
                          decoration: InputDecoration(
                            hintText: "email".toUpperCase(),
                          ),
                        ),
                      ),
                      TextFieldContainer(textField: TextField(
                        decoration: InputDecoration(
                            hintText: "password".toUpperCase()
                        ),
                      ),
                      ),
                      TextFieldContainer(
                        textField: TextField(
                          decoration: InputDecoration(
                            hintText: "confirm password".toUpperCase(),
                          ),
                        ),
                      ),
                      PrimaryButton(
                        color: Colors.blueAccent,
                        widget:Center(
                          child: Text(
                            "Register",
                            style: kGoogleStyle,
                          ),
                        ),
                      ),
                    ],
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
      ),
    );
  }
}
