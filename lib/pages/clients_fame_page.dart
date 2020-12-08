import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';
class ClientsFamePage extends StatefulWidget {
  @override
  _ClientsFamePageState createState() => _ClientsFamePageState();
}

class _ClientsFamePageState extends State<ClientsFamePage> {
  Expanded buildContainer(icon, text) {
    return Expanded(
      child: Container(
        // color: Colors.red,
        height: sizeConfig.height(0.15),
        width: sizeConfig.width(0.40),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon,size: sizeConfig.height(0.1),
            ),
          ),
          subtitle: Text(text),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Clients Hall of Fame"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: kGradientColor,
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(top:sizeConfig.height(0.020)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildContainer((FontAwesomeIcons.trophy),"most points from Referral"),
                buildContainer((Icons.chat_bubble),"most comments in Lex Assist"),
                buildContainer((Icons.star),"most votes in Lex assist"),
                            ],
            ),
            SizedBox(
              height: sizeConfig.height(0.10),
            ),
            Container(
              color: Colors.red,
              height: sizeConfig.height(0.10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Rank"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Name"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Points"),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.red,
              height: sizeConfig.height(0.10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("1"),
                  SizedBox(width: sizeConfig.width(0.20),),
                  Expanded(child: ListTile(leading:Icon(Icons.emoji_emotions) ,title:Text("Lovely") ,)),
                  Text("23"),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }


}
