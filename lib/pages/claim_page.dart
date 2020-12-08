import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';
class ClaimPage extends StatefulWidget {
  @override
  _ClaimPageState createState() => _ClaimPageState();
}

class _ClaimPageState extends State<ClaimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Claim Page"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: kGradientColor,
          ),
        ),
      ),
      backgroundColor: Color(0xffBDBDBD),
      body: Column(
        children: [
          buildContainer(Text("Iphone 4",style: kLogInText,),Text("Claim till March 13 2019"),Text("Coverage 600\$")),

          buildContainer(Text("Samsung Galaxy",style: kLogInText,),Text("Claim till March 13 2019"),Text("Coverage 600\$")),

          buildContainer(Text("Oppo",style: kLogInText,),Text("Claim till March 13 2019"),Text("Coverage 600\$")),
        ],
      ),
    );
  }

  Widget buildContainer(Text heading,Text description,Text date) {
    return Padding(
      padding: EdgeInsets.all(sizeConfig.height(0.020)),
      child: Container(
        color: Colors.white,
            child: ListTile(
              title: heading,
              trailing: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFBC02D),
                      borderRadius: BorderRadius.circular(30.0)
                ),
                child: OutlineButton(
                    onPressed: (){},
                    child: Text("claim"),
                  borderSide: BorderSide.none,
                    ),
              ),
              subtitle: ListTile(
                title: description,
                subtitle: date,
              ),
            ),
          ),
    );
  }
}
