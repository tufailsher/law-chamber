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
            ListTile(
              title: Text("Laws and Jugements",style: kLogInText),
              subtitle: (Text("The Financial Action Task Force (FATF),\n"
                  " the international watchdog against money laundering and\n"
                  " financing of terrorism,\n"
                  " first put Pakistan on a list of \n"
                  "“jurisdictions with strategic […]")),
            ),
            ListTile(
              title: Text("Laws and Jugements",style: kLogInText),
              subtitle: (Text("The Financial Action Task Force (FATF),\n"
                  " the international watchdog against money laundering and\n"
                  " financing of terrorism,\n"
                  " first put Pakistan on a list of \n"
                  "“jurisdictions with strategic […]")),
            ),
            ListTile(
              title: Text("Laws and Jugements",style: kLogInText),
              subtitle: (Text("The Financial Action Task Force (FATF),\n"
                  " the international watchdog against money laundering and\n"
                  " financing of terrorism,\n"
                  " first put Pakistan on a list of \n"
                  "“jurisdictions with strategic […]")),
            ),
          ],
        ),
      ),
    );
  }
}
