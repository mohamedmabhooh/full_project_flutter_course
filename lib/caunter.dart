import 'package:flutter/material.dart';
class counter extends StatefulWidget {
   counter({
    required this.num,super.key
    });
    int num = 0;
  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
              Color(0xffEFF7F9),
              Color(0xffF6EBED)] 
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              onTap: (){
                print('test_textFiled');
              },
              expands: true,
              maxLength: 50,
              buildCounter: (context, {required currentLength, required isFocused, required maxLength}) {
                return Text('[ $maxLength - $currentLength ]');
              },
              maxLines: null,
              minLines: null,
              cursorColor: Colors.red,
              cursorRadius: Radius.circular(14),
              cursorWidth: 13,
              enabled: true,
              onChanged: (String text){
                print(text);
              },
              //obscureText: true,
             // obscuringCharacter: '#',
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                constraints: BoxConstraints(
                  minHeight: 20,
                  maxHeight: 80
                ),
                //counterText: '',
                hintText: 'Enter email ',
                label: Icon(Icons.abc),
              //  labelText: 'Email',
                labelStyle: TextStyle(),
              // floatingLabelBehavior: FloatingLabelBehavior.never
               fillColor: Colors.grey[300],
               filled: true,
              // enabledBorder: InputBorder.none,
              focusColor: Colors.amber,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black
                )
              ),
              // focusedBorder:InputBorder.none,
             /* enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 5
                )
              )*/
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black
                )
                
              ),
              
            
              ),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.all(Radius.circular(15))
                ),
          child:  TextField(
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.amber
            ),
            maxLength: 22,
            buildCounter: (context, {required currentLength, required isFocused, required maxLength}) {
              return Padding(padding: EdgeInsets.only(top: 25),
              child: Text('[12-23]'),);
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
           ))
            ],
          ),
        ),
      )
      );
  }
}