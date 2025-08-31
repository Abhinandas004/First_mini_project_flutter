import 'package:flutter/material.dart';
import 'package:mini_project/Admin/Admin_notification.dart';
import 'package:mini_project/Mech/Mech_home_tabbar.dart';
import 'package:mini_project/Mech/Mech_services.dart';

class MechNavigation extends StatefulWidget {
  const MechNavigation({super.key});

  @override
  State<MechNavigation> createState() => _MechNavigationState();
}

class _MechNavigationState extends State<MechNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    MechHomeTabbar(),
    MechServices(),
    AdminNotification(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'Assets/plumber 1.png',
              width: 30,
              height: 30,
            ),
            label: 'Request',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'Assets/repair-tool 1.png',
              width: 30,
              height: 30,
            ),
            label: 'Service',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'Assets/star (2) 1.png',
              width: 30,
              height: 30,
            ),
            label: 'Rating',
            backgroundColor: Colors.white,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        iconSize: 26,
        onTap: _onItemTapped,
        elevation: 6,
      ),
    );
  }
}
