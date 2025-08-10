
import 'package:flutter/material.dart';
import 'package:full_project_flutter_course/out_poarding.dart';
import 'package:full_project_flutter_course/splach.dart';
import 'package:full_project_flutter_course/caunter.dart';


void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splach' ,
     routes: {
       '/splach':(context)=>splach(),
       '/out_poarding':(context)=>out_poarding(),
     },
    );
  }
}
