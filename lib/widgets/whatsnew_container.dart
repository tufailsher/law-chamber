import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Muhammad%20Tufail/AndroidStudioProjects/flutter_app/law_chamber/lib/utils/Constants.dart';
import 'package:law_chamber/main.dart';

import '../size_config.dart';

class WhatsNewContainer extends StatelessWidget {
  const WhatsNewContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: ListTile(
        title: Text("What's New",
        style: kLogInText,
        ),
        subtitle: Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10),
          //   border: Border.all(color: Colors.black54),
          // ),
          height: SizeConfig.init(context).height(0.30),
          width:SizeConfig.init(context).width(0.9),
          child: Center(
              child:Image(image: AssetImage("assets/images/cover.png"),
                height: sizeConfig.height(0.3),
                width: sizeConfig.width(.9),
                fit: BoxFit.cover
              ),
          ),
        ),
      ),
    );
  }
}
