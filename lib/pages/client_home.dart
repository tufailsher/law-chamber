import 'package:flutter/material.dart';

class ClientHome extends StatefulWidget {
  @override
  _ClientHomeState createState() => _ClientHomeState();
}

class _ClientHomeState extends State<ClientHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Client Home")),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Search Lawyer",

            ),
          )
        ],

      ),
    );
  }
}
