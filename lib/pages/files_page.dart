import 'package:flutter/material.dart';
class FilesPage extends StatefulWidget {
  @override
  _FilesPageState createState() => _FilesPageState();
}

class _FilesPageState extends State<FilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Files"),
      ),
      body: Container(
        child: Center(child: Text("this page is under process"),),
      ),
    );
  }
}
