import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../size_config.dart';

class CreditsButtonContainer extends StatelessWidget {
 final Widget buttonIcon;
  final Widget buttonText;
  final Function onClick;
  CreditsButtonContainer({@required this.buttonIcon,@required this.buttonText
  ,this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: SizeConfig.init(context).height(0.1),
        width: SizeConfig.init(context).width(0.2),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black12),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonIcon,
            buttonText,
          ],
        ),
      ),
      onTap: onClick,
    );
  }
}
