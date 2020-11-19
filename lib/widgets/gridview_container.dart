import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
class GridViewContainer extends StatelessWidget {
  final Icon containerIcon;
  final Text containerText;

   GridViewContainer({
     @required this.containerIcon, @required this.containerText,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(8),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          containerIcon,
          containerText,
        ],
      ),
    );
  }
}
