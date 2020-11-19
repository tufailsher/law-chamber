import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/pages/client_sign_up.dart';
import 'package:law_chamber/pages/lawyer_data.dart';
import 'package:law_chamber/pages/lawyer_home_page.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex=0;
  List<Widget>tabs=[
    LawyerHomePage(),
    LawyerData(),
    ClientSignUp(),
    LawyerHomePage(),
  ];
  _onTapItems(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs.elementAt(_selectedIndex),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.black),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.wallet,color: Colors.black),
          label: "Credit",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.bell,color: Colors.black),
          label: "Notification",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.userCircle,color: Colors.black),
          label: "User",
        ),
      ],
            currentIndex: _selectedIndex,
            onTap: _onTapItems,
            selectedItemColor: Colors.yellow,
          ),

    );
  }
}
