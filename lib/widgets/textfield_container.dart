import 'package:flutter/material.dart';
class TextFieldContainer extends StatelessWidget {
 final TextField textField;
   TextFieldContainer({@required this.textField,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: textField
    );
  }
}