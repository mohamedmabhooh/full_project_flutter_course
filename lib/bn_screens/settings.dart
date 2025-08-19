import 'package:flutter/material.dart';
import 'package:full_project_flutter_course/Checkbox_model.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  bool switch_v = false;
  String _Radio = 'f'; // Initial radio value
  bool switch2 = false; // Initial switch value
  String mess = "Turned Off"; // Initial message
  bool _value = false; // Example value for Checkbox
  List<Checkbox_model> Checkbox_list =[
    Checkbox_model(title: 'Option 1', value: false),
    Checkbox_model(title: 'Option 2', value: false),
    Checkbox_model(title: 'Option 3', value: false),
  ];
  List<Checkbox_model> Dropdown_list =[
    Checkbox_model(id:0,title: 'Option 1', value: false),
    Checkbox_model(id:1,title: 'Option 2', value: false),
    Checkbox_model(id:2,title: 'Option 3', value: false),
  ];
  RangeValues Slider = RangeValues(0, 25) ;
  RangeLabels  Slider_labels =RangeLabels('0', '25');
 String? DropdownValue ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: switch2,
          onChanged: (bool x) {
            setState(() {
              switch2 = x;
            });
          },
        ),
      RangeSlider(
          values: Slider,
          min: 0,
          max: 50,
          labels: this.Slider_labels,
          divisions: 60,
          onChanged: (e){
           setState(() {
             this.Slider =  RangeValues(e.start, e.end);
             this.Slider_labels =RangeLabels('${e.start}', e.end.toString());
           });
          }),
        SwitchListTile(
          value: switch_v,
          title: Text('sdf'),
          subtitle: Text('sfsf'),
          onChanged: (x) {
            setState(() {
              switch_v = x;
            });
          },
        ),
    Container(

      child: RichText(
      text: const TextSpan(
      children: [
      TextSpan(
      text: 'Hello',
      style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold, fontSize: 24),
      ),
      TextSpan(
      text: 'Luxembourg',
      style: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 32, color: Colors.grey),
      ),
      ], ),
      ),
    ),
        SizedBox(height: 16),
        RadioListTile<String>(
          title: Text('Option 1'),
          subtitle: Text('This is option 1'),
          value: 'f', 
          groupValue: this._Radio,
           onChanged: (String ? x){
           setState(() {
            if(x != null){
               _Radio=x;
            }
            
           });
           }),


           //  RichText(text: ),),
             RadioListTile<String>(
               title: Text('Option 2'),
          subtitle: Text('This is option 2'),
          value: 'm', 
          groupValue: this._Radio,
           onChanged: (String ? x){
           setState(() {
            if(x != null){
              _Radio=x;
            }
           });
           }),
          for(Checkbox_model x in Checkbox_list)
            CheckboxListTile(

              title: Text(x.title),
              value: x.value,
              onChanged: (bool? value) {
                setState(() {
                  x.value = value ?? false;
                });
              },
            ),

      DropdownButton<String>(
        hint: Text('select'),

         value: this.DropdownValue,
          items: this.Dropdown_list.map(
                  (e)=>DropdownMenuItem<String>(
                      value: e.id.toString(),
                      child: Text(e.title))).toList(),
          onChanged: (e){
           setState(() {
             this.DropdownValue = e;
           });
          }),

        
        Text(mess, style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
