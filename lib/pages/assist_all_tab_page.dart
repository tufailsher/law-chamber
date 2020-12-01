import 'package:flutter/material.dart';
import 'package:law_chamber/widgets/on_going_list_container.dart';
class AssistAllTabPage extends StatefulWidget {
  @override
  _AssistAllTabPageState createState() => _AssistAllTabPageState();
}

class _AssistAllTabPageState extends State<AssistAllTabPage> {
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
