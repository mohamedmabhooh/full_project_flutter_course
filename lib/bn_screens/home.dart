import 'package:flutter/material.dart';

import '../Checkbox_model.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Checkbox_model> Dropdown_list =[
    Checkbox_model(id:0,title: 'Option 1', value: false),
    Checkbox_model(id:1,title: 'Option 2', value: false),
    Checkbox_model(id:2,title: 'Option 3', value: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 200,
          child: ListView(
            scrollDirection: Axis.vertical,
            reverse: true,
            children: [
              Container(height: 200,width: 300,
                color: Colors.green,child: Center(child: Text('1'),),),
              Container(height: 200,width: 300,color: Colors.black,child: Center(child: Text('2'),),),
              Container(height: 200,width: 300,color: Colors.pink,child: Center(child: Text('3'),),),
              Container(height: 200,width: 300,color: Colors.amber,child: Center(child: Text('4'),),),
              Container(height: 200,width: 300,color: Colors.blue,child: Center(child: Text('5'),),),
            ],
          ),

        ),

      Container(
        width: double.infinity,
        height: 300,
        child: ListView.builder(
          itemCount:this.Dropdown_list.length,
            itemBuilder: (BuildContext context,int index){
              return Card(
                child: ListTile(
                  title: Text('${this.Dropdown_list[index].title}'),
                  subtitle: Text('${this.Dropdown_list[index].id}'),
                ),
              );
            },),
      )
      ],
    );
  }
}
