import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';
import 'package:law_chamber/widgets/calendar_tab.dart';
import 'package:law_chamber/widgets/call_tab.dart';
import 'package:law_chamber/widgets/inquiries_tab.dart';

class DrawerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        margin: EdgeInsets.only(
          right: sizeConfig.width(0.1),
        ),
        color: Colors.white,
        child: Container(
          height: sizeConfig.height(1),
          decoration: BoxDecoration(
            gradient: kGradientColor,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.insert_emoticon,
                      size: 100.0,
                    ),
                    radius: 50.0,
                  ),
                  Text(
                    "Muhammad Tufail",
                    style: kDrawerHeaderText,
                  ),
                ],
              ),
              TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: "Calendar",
                  ),
                  Tab(
                    text: "Call Logs",
                  ),
                  Tab(
                    text: "Inquiries",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    CalendarTab(),
                    CallLogs(),
                    InquiriesTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
