import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/utils/Constants.dart';
class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: kGradientColor,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(FontAwesomeIcons.userAlt,size: 50),
            title: Text("this person",style: kLogInText),
            subtitle: Text("the description will be here "),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.userAlt,size: 50),
            title: Text("this person",style: kLogInText),
            subtitle: Text("the description will be here "),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.userAlt,size: 50),
            title: Text("this person",style: kLogInText),
            subtitle: Text("the description will be here "),
          ),
        ],
      ),
    );
  }
}
