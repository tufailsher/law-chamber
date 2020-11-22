import 'package:flutter/material.dart';
class WorksPage extends StatefulWidget {
  @override
  _WorksPageState createState() => _WorksPageState();
}

class _WorksPageState extends State<WorksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Works Page"),
      ),
      body: Container(
        child: Center(child: Text("this page is under process"),),
      ),
    );
  }
}
