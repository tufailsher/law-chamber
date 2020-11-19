import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'file:///C:/Users/Muhammad%20Tufail/AndroidStudioProjects/flutter_app/law_chamber/lib/utils/Constants.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/pages/lawyer_data.dart';
import 'package:law_chamber/widgets/calendar_container.dart';
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
        child:Container(
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

                     Text("Muhammad Tufail",
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
                      children : [
                        Container(
                          height: sizeConfig.height(0.5),
                          child:Column(
                            children: [
                              CalendarContainer(
                                buttonIcon: Icon(FontAwesomeIcons.home),
                                buttonText: Text("Home"),
                              ),
                              CalendarContainer(
                                buttonIcon: Icon(FontAwesomeIcons.file),
                                buttonText: Text("Curriculum Vitae"),
                              ),
                              CalendarContainer(
                                buttonIcon: Icon(FontAwesomeIcons.questionCircle),
                                buttonText: Text("Help Desk"),
                              ),
                              CalendarContainer(
                                buttonIcon: Icon(FontAwesomeIcons.userAlt),
                                buttonText: Text("Privacy Policy"),
                              ),
                              CalendarContainer(
                                buttonIcon: Icon(FontAwesomeIcons.fileAlt),
                                buttonText: Text("Terms and Condiitons"),
                              ),
                              CalendarContainer(
                                buttonIcon: Icon(FontAwesomeIcons.cog),
                                buttonText: Text("Settings"),
                              ),
                              FlatButton(
                                  onPressed: (){},
                                  child: Center(
                                      child: Text("log Out",
                                      style: kDrawerHeaderText,
                                      ),
                                  ),
                                color: Colors.red,
                              ),
                            ],
                          )
                        ),
                        Container(
                          height: sizeConfig.height(0.5),
                        ),
                        Container(
                          height: sizeConfig.height(0.5),
                        ),
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