import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:law_chamber/pages/credit_screen.dart';
import 'package:law_chamber/pages/lawyer_data.dart';
import 'package:law_chamber/pages/lawyer_home_page.dart';
import 'package:law_chamber/pages/notification_screen.dart';
class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {int _selectedIndex = 0;
static const TextStyle optionStyle =
TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
 List<Widget> _widgetOptions = <Widget>[
  LawyerHomePage(),
  CreditScreen(),
  NotificationScreen(),
   LawyerData(),
];

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.userCircle),
          label: 'Account',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.black26,
      onTap: _onItemTapped,
    ),
  );
}
}
