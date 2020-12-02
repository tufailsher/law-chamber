import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: sizeConfig.height(0.20),
              width: sizeConfig.width(0.9),
              child: Image.asset("assets/images/news1.jpg",
                fit: BoxFit.cover,),
            ),
            Text("Laws and Jugements", style: kLogInText),
                Text("The Financial Action Task Force (FATF),\n"
                    " the international watchdog against money laundering and\n"
                    " financing of terrorism,\n"
                    " first put Pakistan on a list of \n"
                    "“jurisdictions with strategic […]"),
            Container(
              height: sizeConfig.height(0.20),
              width: sizeConfig.width(0.9),
              child: Image.asset("assets/images/news1.jpg",
                fit: BoxFit.cover,),
            ),
            Text("Laws and Jugements", style: kLogInText),
            Text("The Financial Action Task Force (FATF),\n"
                " the international watchdog against money laundering and\n"
                " financing of terrorism,\n"
                " first put Pakistan on a list of \n"
                "“jurisdictions with strategic […]"),
            Container(
              height: sizeConfig.height(0.20),
              width: sizeConfig.width(0.9),
              child: Image.asset("assets/images/news1.jpg",
                fit: BoxFit.cover,),
            ),
            ListTile(leading: Text("Laws and Jugements", style: kLogInText)),
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