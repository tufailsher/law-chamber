import 'package:flutter/material.dart';

import '../utils/Constants.dart';
import '../size_config.dart';
class  AppbarContainer extends StatelessWidget {
  final Widget textWidget;
   AppbarContainer({@required this.textWidget  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: SizeConfig.init(context).height(0.3),
      child: Center(
        child: textWidget,
          //style: kLogInTextStyle,
        ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
          Alignment(0.6, 1.0), // 10% of the width, so there are ten blinds.
          colors: [
            const Color(0xFF3F51B5),
            const Color(0xFF03A9F4),
          ], // red to yellow
          tileMode: TileMode.repeated,
        ),
      ),
    );
  }
}
