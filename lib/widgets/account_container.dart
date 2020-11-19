import 'package:flutter/material.dart';
import 'package:law_chamber/size_config.dart';
class AccountContainer extends StatelessWidget {
  const AccountContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.init(context).width(0.9),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black26),
      ),
      child: ListTile(
        title: Text("Accont"),
        subtitle: Text("Yet not verified"),
      ),
    );
  }
}