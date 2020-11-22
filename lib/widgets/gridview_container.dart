import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
class GridViewContainer extends StatelessWidget {
  final Icon containerIcon;
  final Text containerText;
  final Function onClick;

   GridViewContainer({
     @required this.containerIcon, @required this.containerText,this.onClick
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            containerIcon,
            containerText,
          ],
        ),
      ),
      onTap: onClick,
    );
  }
}
