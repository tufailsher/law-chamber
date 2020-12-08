import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/pages/every_day_law_page.dart';
import 'package:law_chamber/pages/lawyer_data.dart';
import 'package:law_chamber/pages/lawyer_home_page.dart';
import 'package:law_chamber/pages/log_in_page.dart';
import 'package:law_chamber/pages/what_new_page.dart';
import 'package:law_chamber/utils/Constants.dart';
import 'package:law_chamber/widgets/navigation_page.dart';

import '../main.dart';

class CalendarTab extends StatefulWidget {
  @override
  _CalendarTabState createState() => _CalendarTabState();
}

class _CalendarTabState extends State<CalendarTab> {
  Widget buildListTile(Icon icon, Text text,Function onClick) {
    return Expanded(
      child: SingleChildScrollView(
        child: ListTile(
          leading: icon,
          title: text,
          onTap: onClick,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: sizeConfig.height(0.5),
      child: Column(
        children: [
          buildListTile(Icon(FontAwesomeIcons.userCircle), Text("Profile"),(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LawyerData()));
          }),
          buildListTile(Icon(FontAwesomeIcons.home), Text("Home"),(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigationPage()));
          }),
          buildListTile(Icon(FontAwesomeIcons.file), Text("What\'s new"),
                  (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context)=>WhatNewPage()));
          }),
          buildListTile(Icon(FontAwesomeIcons.file), Text("Every Day Law"),(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>EveryDayLawPage()));
          }),
          buildListTile(
              Icon(FontAwesomeIcons.questionCircle), Text("Help Desk"),(){}),
          buildListTile(Icon(FontAwesomeIcons.userAlt), Text("Privacy Policy"),(){}),
          buildListTile(
              Icon(FontAwesomeIcons.fileAlt), Text("Terms and Conditions"),(){}),
          buildListTile(Icon(FontAwesomeIcons.cog), Text("Settings"),(){}),
          FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInPage()));
            },
            child: Center(
              child: Text(
                "log Out",
                style: kDrawerHeaderText,
              ),
            ),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}