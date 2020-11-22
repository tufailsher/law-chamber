import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/pages/ongoing_tab_page.dart';
import 'package:law_chamber/utils/Constants.dart';
class AssistPage extends StatefulWidget {
  @override
  _AssistPageState createState() => _AssistPageState();
}

class _AssistPageState extends State<AssistPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: sizeConfig.height(0.050),
              ),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.userAlt,
                    size: sizeConfig.height(0.1)),
                title: (Text("Muhammad Tufail",style: kLogInText,)),
                subtitle: FlatButton(
                  color: Colors.red,
                  child: Text("Ask Lawyers"),
                  onPressed: (){},
                ),
              ),
            ),

            TabBar(
              labelColor:Colors.purple ,
              indicatorColor: Colors.redAccent,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: "On Going",
                ),
                Tab(
                  text: "All",
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.black26.withOpacity(.01),
               // height: sizeConfig.height(0.2),
                width: double.infinity,
                child: TabBarView(
                  children: [
                    OngoingTabPage(),
                    Center(child: Text("WithDraws")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
