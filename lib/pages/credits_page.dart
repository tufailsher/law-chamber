import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';

class CreditsPage extends StatefulWidget {
  @override
  _CreditsPageState createState() => _CreditsPageState();
}

class _CreditsPageState extends State<CreditsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Balance",
                  style: kLogInText,
                ),
                subtitle: Icon(FontAwesomeIcons.commentDollar),
                trailing: Text(
                  "0",
                  style: kLogInText,
                ),
              ),
              ListTile(
                title: Text(
                  "Withdrawn",
                  style: kLogInText,
                ),
                subtitle: Icon(FontAwesomeIcons.commentDollar),
                trailing: Text(
                  "0",
                  style: kLogInText,
                ),
              ),
              ListTile(
                title: Text(
                  "Earned",
                  style: kLogInText,
                ),
                subtitle: Icon(FontAwesomeIcons.commentDollar),
                trailing: Text(
                  "0",
                  style: kLogInText,
                ),
              ),
              RaisedButton(child: Text("Request Payout"), onPressed: () {}),
              TabBar(
                labelColor:Colors.purple ,
                indicatorColor: Colors.redAccent,
                unselectedLabelColor: Colors.black26,
                tabs: [
                  Tab(
                    text: "Credits",
                  ),
                  Tab(
                    text: "WithDraws",
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.white.withOpacity(0.2),
           //       height: sizeConfig.height(0.2),
                  width: double.infinity,
                  child: TabBarView(
                    children: [
                      Center(child: Text("Credits")),
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
