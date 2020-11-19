import 'package:flutter/material.dart';

import '../size_config.dart';

class PrimaryButton extends StatelessWidget {
  final Color color;
  final Widget widget;
  final Widget logo;
  final Function onPressed;
    PrimaryButton({@required this.color,@required this.widget,this.logo,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: SizeConfig.init(context).height(0.070),
        width: SizeConfig.init(context).width(0.8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: widget,
    );
  }
}
