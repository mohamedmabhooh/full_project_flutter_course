
import 'package:flutter/material.dart';

class splach extends StatefulWidget {
  const splach({super.key});

  @override
  State<splach> createState() => _splachState();
}

class _splachState extends State<splach> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/out_poarding');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.bottomCenter,
              end: AlignmentDirectional.topCenter,
              colors: [
                Color(0xffCEEDF3),
                Color(0xffF8EAEA),
              ]
          )
        ),
        child: Align(
          alignment: AlignmentDirectional.center,
            child: Image.asset('images/Group_513-removebg-preview.png')),
    )
    );
  }
}
