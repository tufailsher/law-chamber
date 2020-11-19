import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
class CalendarContainer extends StatelessWidget {
  final Icon buttonIcon;
  final Text buttonText;
   CalendarContainer({
    @required this.buttonIcon,@required this.buttonText
});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: sizeConfig.height(0.5),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: sizeConfig.width(.1)),
          child: Row(
            children: [
              buttonIcon,
              SizedBox(
                width: sizeConfig.width(0.1),
              ),
              buttonText,
            ],
          ),
        ),
      ),
    );
  }
}