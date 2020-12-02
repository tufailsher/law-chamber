import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';
class WhatNewPage extends StatefulWidget {
  @override
  _WhatNewPageState createState() => _WhatNewPageState();
}

class _WhatNewPageState extends State<WhatNewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: sizeConfig.height(0.50),
              width: sizeConfig.width(0.9),
              child: Image.asset("assets/images/everyDayLaw.png",
                fit: BoxFit.cover,),
            ),
            ListTile(leading: Text("Every Day Law", style: kLogInText)),
            Text("The Financial Action Task Force (FATF),\n"
                " the international watchdog against money laundering and\n"
                " financing of terrorism,\n"
                " first put Pakistan on a list of \n"
                "“jurisdictions with strategic […]"),
          ],
        ),
      ),
    );
  }
}
