import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class OngoingTabPage extends StatefulWidget {
  @override
  _OngoingTabPageState createState() => _OngoingTabPageState();
}

class _OngoingTabPageState extends State<OngoingTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.personBooth),
                title: Text("Client Case"),
                subtitle: Text("the description will be here"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.personBooth),
                title: Text("Client Case"),
                subtitle: Text("the description will be here"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.personBooth),
                title: Text("Client Case"),
                subtitle: Text("the description will be here"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.personBooth),
                title: Text("Client Case"),
                subtitle: Text("the description will be here"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.personBooth),
                title: Text("Client Case"),
                subtitle: Text("the description will be here"),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.personBooth),
                title: Text("Client Case"),
                subtitle: Text("the description will be here"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
