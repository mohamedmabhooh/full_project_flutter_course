import 'package:flutter/material.dart';

import 'bn_screens/home.dart';
import 'bn_screens/settings.dart';
import 'bn_screens/user.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int index =0;
  var screens =[user(),home(),setting(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[this.index],
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      onTap: (int index){
       setState(() {
         this.index = index;
       });
      },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_outlined),
               activeIcon: Icon(Icons.person),
          label: 'user'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: 'settings'),
        ]
    ),
    );
  }
}
