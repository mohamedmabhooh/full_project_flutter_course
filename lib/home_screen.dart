import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bn_screens/home.dart';
import 'bn_screens/settings.dart';
import 'bn_screens/user.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int _index =0;
 final  _screens =[user(),home(),setting(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.blue,),
      body: _screens[this._index],
    drawer: Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Container(
            width: 294,
            height: 280,
            color: Colors.white,
            child:Column(
              children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
               Padding(
                 padding: const EdgeInsets.only(right: 15),
                 child: InkWell(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: Icon(Icons.close,
                     color: Colors.black,
                   size: 26,),
                 ),
               )
             ],),
                SizedBox(
                  height: 24,
                ),
                CircleAvatar(

                  maxRadius: 70,

                  child: Image.asset('images/ty.png',
                    fit: BoxFit.cover,width: 150,height: 150,),
                ),
                SizedBox(height: 16,),
                Text('Michelangelo Flores',
                  style: TextStyle(
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.normal,
                  fontSize: 17
                ),),
                Text('michelangeloflores@gmail.com', style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.normal,
                    color: Color(0xff707070),
                    fontSize: 17
                ),),
              ],
            ) ,
          )
        ],
      )
    ),
    bottomNavigationBar: BottomNavigationBar(
    selectedItemColor: Colors.red,
     //selectedLabelStyle: TextStyle(color: Colors.green),
     currentIndex:_index ,
      onTap: (int index){
       setState(() {
         this._index = index;
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
