import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';
class ClientsNotificationPage extends StatefulWidget {
  @override
  _ClientsNotificationPageState createState() => _ClientsNotificationPageState();
}

class _ClientsNotificationPageState extends State<ClientsNotificationPage> {
  Widget buildContainer (text1,text2,text3){
    return Padding(
      padding: EdgeInsets.all(sizeConfig.height(0.010)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(sizeConfig.height(0.020)),
        ),
        height: sizeConfig.height(0.2),
        width: sizeConfig.width(0.9),
        child: Column(
          children: [
            ListTile(title:Text(text1,style: kLogInText,),
              subtitle: Text(text2),
            ),
            ListTile(
              title: Text(text3,style: TextStyle(
                color: Colors.black.withOpacity(0.4),
              ),),
            ),

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(),
              buildContainer(
                  ("Client Name"),("Description"),("Case:Financially Corruption"),
              ),
              buildContainer(
                ("Client Name"),("Description"),("Case:Financially Corruption"),
              ),
              buildContainer(
                ("Client Name"),("Description"),("Case:Financially Corruption"),
              ),
              buildContainer(
                ("Client Name"),("Description"),("Case:Financially Corruption"),
              ),
              buildContainer(
                ("Client Name"),("Description"),("Case:Financially Corruption"),
              ),

            ],
          ),
        ));
  }
}
