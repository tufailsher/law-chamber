import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/main.dart';
import 'package:law_chamber/widgets/on_going_list_container.dart';
class AssistOngoingTabPage extends StatefulWidget {
  @override
  _AssistOngoingTabPageState createState() => _AssistOngoingTabPageState();
}

class _AssistOngoingTabPageState extends State<AssistOngoingTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            onGoingListContainer(),
            onGoingListContainer(),
            onGoingListContainer(),
            onGoingListContainer(),
            onGoingListContainer(),
            onGoingListContainer(),
          ],
        ),
      ),
    );
  }
}