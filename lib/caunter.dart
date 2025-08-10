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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                    widget.num--;
                });
                
               print(widget.num);

              },
              icon: Icon(Icons.remove),
            ),
            Text(
              '${widget.num}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {
               setState(() {
              widget.num++;

               });
              print(widget.num);
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}