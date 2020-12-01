import 'package:flutter/material.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/size_config.dart';
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
        body: Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            // border: Border.all(color: Colors.black54),
          ),
          height: SizeConfig.init(context).height(0.20),
          width:SizeConfig.init(context).width(0.9),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              containerIcon,
              containerText,
            ],
          ),
        ),
      ),
      onTap: onClick,
    );
  }
}
