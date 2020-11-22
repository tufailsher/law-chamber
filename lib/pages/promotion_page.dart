import 'package:flutter/material.dart';
class PromotionPage extends StatefulWidget {
  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promotion Page"),
      ),
      body: Container(
        child: Center(child: Text("this page is under process"),),
      ),
    );
  }
}
