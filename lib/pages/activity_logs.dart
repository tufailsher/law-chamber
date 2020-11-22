import 'package:flutter/material.dart';
import 'package:law_chamber/utils/Constants.dart';
class ActivityLogs extends StatefulWidget {
  @override
  _ActivityLogsState createState() => _ActivityLogsState();
}

class _ActivityLogsState extends State<ActivityLogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity Log"),
      ),
      body: Column(
        children: [
          Container(
            child: ListTile(
              title: Text("Login to your account",style: kLogInText,),
              subtitle: Text("android, samsung, SM \n J320G"),
            ),
          ),
          Container(
            child: ListTile(
              title: Text("Updated your Profile\n account",style: kLogInText,),
              subtitle: Text("android, samsung, SM \n J320G"),
            ),
          ),
          Container(
            child: ListTile(
              title: Text("Facebook Register",style: kLogInText,),
              subtitle: Text("android, samsung, SM \n J320G"),
            ),
          ),
        ],
      ),
    );
  }
}
