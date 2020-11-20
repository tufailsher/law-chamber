import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';

class CreditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeConfig.height(0.1),
        width: double.infinity,
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Balance",
                style: kLogInText,
              ),
              subtitle: Icon(FontAwesomeIcons.balanceScale),
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
              subtitle: Icon(FontAwesomeIcons.balanceScale),
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
              subtitle: Icon(FontAwesomeIcons.balanceScale),
              trailing: Text(
                "0",
                style: kLogInText,
              ),
            ),
            RaisedButton(child: Text("Request Payout"), onPressed: () {}),
          ],
        ),
    );
  }
}
