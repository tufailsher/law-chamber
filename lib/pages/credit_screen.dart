import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';

class CreditScreen extends StatefulWidget {
  @override
  _CreditScreenState createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
              unselectedLabelColor: Colors.yellowAccent,
              tabs: [
                Tab(
                  text: "Credits",
                ),
                Tab(
                  text: "WithDraws",
                ),
              ],
            ),
            Container(
              color: Colors.blue,
              height: sizeConfig.height(0.2),
              width: double.infinity,
              child: TabBarView(
                children: [
                  Center(child: Text("Credits")),
                  Center(child: Text("WithDraws")),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
