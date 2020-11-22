import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/utils/Constants.dart';
class LoadPage extends StatefulWidget {
  @override
  _LoadPageState createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            height: sizeConfig.height(0.15),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: kGradientColor,
            ),
            child: Center(
              child: Text("Load Page",style: TextStyle(
                  color: Colors.white10),
              ),
            ),
          ),
        ],
      ) ,
    );
  }
}
