import 'dart:math';

import 'package:flutter/material.dart';
import 'package:full_project_flutter_course/caunter.dart';
import 'package:full_project_flutter_course/widgets/out_poarding_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class out_poarding extends StatefulWidget {
   out_poarding({super.key});

  @override
  State<out_poarding> createState() => _out_poardingState();
}

class _out_poardingState extends State<out_poarding> {
 late PageController _pageController;
  int _currentpage=0;



 @override
  void initState() {
    _pageController =PageController();
   
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
             Color(0xffF6EBED),
             Color(0xffEFF7F9),

           ])
     ),
     child: Column(
       children: [
       
            Padding(
              padding: const EdgeInsets.only(left: 280,top: 50),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => counter(num: 45,),));
                },
                child: Text('skip')),
            ),
          
         Expanded(
           child: PageView(
             controller: _pageController,
            onPageChanged: (int page){

               setState(() {
                 print(page);
                 _currentpage = page;
               });
           
            //  print(_currentpage);
            },
            // scrollDirection: Axis.vertical,
             children: [
             out_poarding_widget(image: 'images/undraw_education_f8ru.png',ontap: (){},
             text: 'لان اكون ديل في الحق خيرا من ان اكون راسا في الباطل ',),
             out_poarding_widget(image: 'images/undraw_certificate_re_yadi.png',ontap: (){}
             ,text: 'يا عزة النفس كوني في العلى قمرا *** فالعش دونك مثل الغصن ان مالا \nما قيمة المراء ان ضاعت كرمته *** فضل الكرمة يعلو الجاه والمالا',),
             out_poarding_widget(image: 'images/undraw_educator_re_ju47 .png',ontap: (){},
             text: 'اتبع سبل الهدى و لا يضيرك قلة السالكين \nواترسب الضلالة و لا يغرك كثرة الهالكين ',)
           
             ],
           ),
         ),
        /*
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TabPageSelectorIndicator(
             backgroundColor:_currentpage ==0 ? Color(0xff273262):Colors.white,
                borderColor: Color(0xff273262),
                size: 20),
            TabPageSelectorIndicator(
                backgroundColor:_currentpage ==1 ? Color(0xff273262):Colors.white,
                borderColor: Color(0xff273262),
                size: 20),
            TabPageSelectorIndicator(
                backgroundColor:_currentpage ==2 ? Color(0xff273262):Colors.white,
                borderColor: Color(0xff273262),
                size: 20),

          ],
        ),*/
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               width: 17,
               height: 5,
               decoration: BoxDecoration(
                 color: _currentpage==0?Color(0xff273262):Colors.white,
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Color(0xff273262))
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 8),
               child: Container(
                 width: 17,
                 height: 5,
                 decoration: BoxDecoration(
                     color: _currentpage==1?Color(0xff273262):Colors.white,

                     borderRadius: BorderRadius.circular(15),
                     border: Border.all(color: Color(0xff273262))
                 ),
               ),
             ),
             Container(
               width: 17,
               height: 5,
               decoration: BoxDecoration(
                
                   color: _currentpage==2?Color(0xff273262):Colors.white,

                   borderRadius: BorderRadius.circular(15),
                   border: Border.all(color: Color(0xff273262))
               ),
             )
           ],
         ),
         
         SizedBox(height: 90,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Spacer(),
             InkWell(
              onTap:(){
              _pageController.previousPage(duration: Duration(seconds:1 ), curve: Curves.fastOutSlowIn);
              },
               child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                 color: Color(0xffFF657F),  
                ),
                child: Icon(Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                ),
               ),
             ),
             Spacer(),
               InkWell(
          onTap:(){
            if(_currentpage==2){
            //  Navigator.pushNamed(context, '/counter');
            }
            _pageController.nextPage(duration: Duration(seconds:1 ), curve: Curves.fastOutSlowIn);

            
          },
           child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
            shape: BoxShape.circle,
             color: Color(0xffFF657F),  
            ),
            child: Icon(Icons.arrow_forward_ios,
              color: Colors.white,
              size: 30,
            ),
           ),
         ),
          Spacer(),
           ],
         ),
          SizedBox(height: 60,),
       ],
     ),

   ),
    );
  }
}

