import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'file:///C:/Users/Muhammad%20Tufail/AndroidStudioProjects/flutter_app/law_chamber/lib/utils/Constants.dart';

import '../size_config.dart';
import 'credits_button_container.dart';
class CreditsContainer extends StatelessWidget {
  const CreditsContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
       // border: Border.all(color: Colors.black54),
      ),
      height: SizeConfig.init(context).height(0.20),
      width:SizeConfig.init(context).width(0.9),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text("Credits",
            //textAlign: TextAlign.start,
            style: kLogInText,
            ),
          ),
          Divider(
            height: 10,
            thickness: 2,
            color: Colors.black12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CreditsButtonContainer(buttonIcon: Icon(FontAwesomeIcons.solidCreditCard),
                  buttonText: Text("Payouts"),

              ),
              CreditsButtonContainer(
                  buttonIcon: Icon(FontAwesomeIcons.gift),
                  buttonText: Text("Rewards"),
              ),
              CreditsButtonContainer(
                buttonIcon: Icon(FontAwesomeIcons.signOutAlt),
                buttonText: Text("Claim"),
              ),
              CreditsButtonContainer(
                  buttonIcon: Icon(FontAwesomeIcons.history),
                  buttonText: Text("Activity"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
