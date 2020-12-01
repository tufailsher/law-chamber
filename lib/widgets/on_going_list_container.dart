import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/main.dart';

Widget onGoingListContainer() {
  return Padding(
    padding: EdgeInsets.all(sizeConfig.height(0.01)),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: ListTile(
        leading: Icon(FontAwesomeIcons.personBooth),
        title: Text("Client Case"),
        subtitle: Text("the description will be here"),
      ),
    ),
  );
}
