import 'package:flutter/material.dart';
class EmailPage extends StatefulWidget {
  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email us"),
      ),
      body: Container(
        child: Center(child: Text("this page is under process"),),
      ),
    );
  }
}
