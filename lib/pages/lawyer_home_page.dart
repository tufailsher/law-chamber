import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/size_config.dart';
import 'package:law_chamber/utils/Constants.dart';
import 'package:law_chamber/widgets/account_container.dart';
import 'package:law_chamber/widgets/credits_container.dart';
import 'package:law_chamber/widgets/drawer_code.dart';
import 'package:law_chamber/widgets/everyday_law_container.dart';
import 'package:law_chamber/widgets/gridview_container.dart';
import 'package:law_chamber/widgets/whatsnew_container.dart';

class LawyerHomePage extends StatefulWidget {
  @override
  _LawyerHomePageState createState() => _LawyerHomePageState();
}
class _LawyerHomePageState extends State<LawyerHomePage> {
    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffBDBDBD),
          appBar: AppBar(centerTitle: true,
            title: Text("Home Page"),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: kGradientColor,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.init(context).height(0.030),
                ),
                RichText(
                  text: TextSpan(
                    text: "Good Morning,",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 25,
                    ),
                    children: [
                      TextSpan(
                        text: "Muhammad Tufail",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //color: Colors.black12,
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                      crossAxisCount: 4,
                      children: <Widget>[

                        GridViewContainer(
                          containerIcon: Icon(FontAwesomeIcons.users, size: 30,
                          ),
                          containerText: Text("Assist"),
                        ),
                        GridViewContainer(
                          containerIcon: Icon(FontAwesomeIcons.user),
                          containerText: Text("Consult"),
                        ),
                        GridViewContainer(
                          containerIcon: Icon(FontAwesomeIcons.calculator),
                          containerText: Text("Works"),
                        ),
                        GridViewContainer(containerIcon: Icon(FontAwesomeIcons
                            .comment),
                          containerText: Text("EveryDay"),
                        ),
                        GridViewContainer(containerIcon: Icon(FontAwesomeIcons
                            .creditCard),
                          containerText: Text("Credits"),
                        ),
                        GridViewContainer(containerIcon: Icon(FontAwesomeIcons
                            .file),
                          containerText: Text("Files"),
                        ),
                        GridViewContainer(containerIcon: Icon(FontAwesomeIcons
                            .tags),
                          containerText: Text("Promotion"),
                        ),
                        GridViewContainer(containerIcon: Icon(FontAwesomeIcons
                            .mailBulk),
                          containerText: Text("Email"),
                        ),

                      ],
                    ),
                  ),
                ),
                CreditsContainer(),
                SizedBox(
                  height: SizeConfig.init(context).height(0.020),
                ),
                AccountContainer(),
                SizedBox(
                  height: SizeConfig.init(context).height(0.020),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.init(context).width(0.053),
                      right: SizeConfig.init(context).width(0.053)),
                  child: WhatsNewContainer(),
                ),
                SizedBox(
                  height: SizeConfig.init(context).height(0.020),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.init(context).width(0.053),
                    right: SizeConfig.init(context).width(0.053),
                  ),
                  child: EveryDayNewLawContainer(),
                ),
                SizedBox(
                  height: SizeConfig.init(context).height(0.020),
                ),
              ],
            ),
          ),
          drawer: DrawerCode(),

        ),
      );
    }
  }