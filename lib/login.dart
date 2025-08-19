import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
   login({super.key});
 bool opc = true;

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  late TextEditingController _textEditingController;
  late TextEditingController _textEditingController2;
   String helperText_emil='';
   String helperText_password='';
  @override
  void initState() {
    print('test');
   _textEditingController=TextEditingController();
   _textEditingController2=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
   _textEditingController.dispose();
   _textEditingController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
             colors: [
               Color(0xffEFF7F9),
               Color(0xffF6EBED),
             ]
         )
       ),
       child: SingleChildScrollView(
         child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
           children: [
          SizedBox(width: double.infinity,),
             SizedBox(height: 90,),
             Image.asset('images/Group_513-removebg-preview.png'),
             SizedBox(height: 30,),
             Text('مرحبًا بك مرة أخرى ، قم بتسجيل ',
               style: GoogleFonts.cairo(
               textStyle: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.bold
               )
             ),),
             Text(' الدخول للمتابعة مع',style: GoogleFonts.cairo(
             textStyle: TextStyle(
             fontSize: 16,
                 fontWeight: FontWeight.bold
             )
              ),),
             Text('تطبيق آفاق',style: GoogleFonts.cairo(
              textStyle: TextStyle(
                 fontSize: 16,
             fontWeight: FontWeight.bold
             )
             ),),
             SizedBox(height: 30,),
             Container(
           width: 390,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(15)),
                 border: Border.all(color: Color(0xffC7C7C7),width: 2)
               ),
               child: Column(
                 children: [
                   TextField(
                     controller: _textEditingController,
                     style: GoogleFonts.cairo(
                    textStyle: TextStyle(
                   fontSize: 14,
                   color: Color(0xff273262)
               ),),
                     textDirection: TextDirection.rtl,
                     keyboardType: TextInputType.emailAddress,
                     decoration: InputDecoration(
         
                      contentPadding: EdgeInsets.symmetric(horizontal: 24),
                       hintTextDirection: TextDirection.rtl,
         
                       hintText: 'البريد الالكتروني',
                       helperText: this.helperText_emil,
                         helperStyle: GoogleFonts.cairo(
                             textStyle: TextStyle(
                                 fontSize: 14,
                                 color: Colors.red
                             )
                         ),
                       hintStyle:GoogleFonts.cairo(
                         textStyle: TextStyle(
                           fontSize: 14,
                           color: Color(0xff273262)
                         )
                       ),
                       border: InputBorder.none
                     ),
                   ),
                   Divider(
                     endIndent: 24,
                     indent: 24,
                     thickness: 3,
                   ),
                   TextField(
                     controller: _textEditingController2,
                     style: GoogleFonts.cairo(
                       textStyle: TextStyle(
                           fontSize: 14,
                           color: Color(0xff273262)
                       ),),
                     textDirection: TextDirection.rtl,
                     keyboardType: TextInputType.emailAddress,
                     decoration: InputDecoration(
         
                         contentPadding: EdgeInsets.symmetric(horizontal: 24),
                         hintTextDirection: TextDirection.rtl,
                         helperText: this.helperText_password,
                         helperStyle: GoogleFonts.cairo(
                           textStyle: TextStyle(
                             fontSize: 14,
                             color: Colors.red
                           )
                         ),
                         hintText: 'كلمة المرور',
                         hintStyle:GoogleFonts.cairo(
                             textStyle: TextStyle(
                                 fontSize: 14,
                                 color: Color(0xff273262)
                             )
                         ),
                         border: InputBorder.none
                     ),
                   ),
                 ],
               ),
             ),
             SizedBox(height: 6,),
             Row(
         
               children: [
               Spacer(flex: 1,),
               InkWell(
                 onTap: (){},
                 child: Text('نسيت كلمة المرور',style: GoogleFonts.cairo(
                   textStyle: TextStyle(
                     fontSize: 14,
                     color: Color(0xff707070),
                     decoration: TextDecoration.underline,
         
         
                   )
                 )),
               ),
               Spacer(flex: 5,),
             ],),
            SizedBox(height: 18,),
            InkWell(
              onTap: (){
            Navigator.pushNamed(context, '/home_screen');
             // text_data();
              },
              child: Container(
                width: 225,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFF657F)
                ),
                child: Center(
                  child: Text('دخول',style: GoogleFonts.cairo(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
         SizedBox(height: 120,),
         
         Text('ليس لدي حساب؟',style: GoogleFonts.cairo(
           textStyle: TextStyle(
             color: Color(0xff707070),
             fontSize: 14
           )
         ),),
         Text('تسجيل',style: GoogleFonts.cairo(
           color: Color(0xff273262),
           fontWeight: FontWeight.bold,
           fontSize: 14
         ),),
           ],
         ),
       )

       /* Center(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: TextField(
           keyboardType: TextInputType.visiblePassword,
             cursorColor: Colors.red,
             obscureText: widget.opc,
             obscuringCharacter: '#',
             //maxLength: 20,
            // expands: true,
          //  minLines: 3,
          //  maxLines: 6,

            // buildCounter: (context, {required currentLength, required isFocused, required maxLength}) {
           //  return null;
           //  } ,
             cursorWidth: 20,
             cursorRadius: Radius.circular(15),
             decoration: InputDecoration(

               constraints: BoxConstraints(
                 maxHeight: 70,
                 minHeight: 20

               ),

               filled: true,
              fillColor: Colors.grey,
             suffix: InkWell(
               onTap: (){
                 setState(() {
                   if( widget.opc == false){
                     widget.opc =true;
                   }else{
                     widget.opc=false;
                   }

                 });
               },
                 child: Icon(Icons.g_mobiledata)),
               //prefix: Icon(Icons.access_alarm),
               //suffixIcon: Icon(Icons.ac_unit_rounded),
               prefixIcon: Icon(Icons.abc_rounded),
              // prefixText: 'text',
              // suffixText: 'tex',
               hintText: 'inter text',
               hintStyle: TextStyle(color: Colors.black),
               //labelText: 'text',
               label: Icon(Icons.abc),
               helperText: 'inter text',
               helperStyle: TextStyle(),
               helperMaxLines: 1,
               floatingLabelBehavior: FloatingLabelBehavior.always,
               border: UnderlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.blue
                 )
               ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                ),
               errorBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.red
                 )
               )



             ),
           ),
         ),
       ),*/
     ),
    );
  }

void text_data(){
   if(_textEditingController.text.isNotEmpty ){
     setState(() {
       helperText_emil = '';
     });
   }
   if(_textEditingController2.text.isNotEmpty ){
     setState(() {
       helperText_password = '';
     });
   }
   if(_textEditingController.text =='' ){
     setState(() {
       helperText_emil = 'ادخل الايميل';
     });
   }

   if( _textEditingController2.text ==''){
     setState(() {
       helperText_password = 'ادخل كلمة المرور';
     });
   }
}

}
