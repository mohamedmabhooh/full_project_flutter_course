import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class out_poarding_widget extends StatelessWidget {
   out_poarding_widget({
    super.key,
    required this.image,
    required this.text,
    required this.ontap,
  });
 final String image;
 final String text;
 void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(this.image),
        SizedBox(
          height: 93,
        ),
        InkWell(
          onTap:this.ontap,
          child: Text(this.text,
            style: GoogleFonts.cairo(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:13
                )
            ),),
        ),

      ],
    );
  }
}
