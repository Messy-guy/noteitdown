// ignore_for_file: unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:peactice/Mytext.dart';
import 'package:peactice/main.dart';

class Todotile extends StatelessWidget {
   Todotile({super.key,required this.value,required this.onChanged,required this.Text,required this.onDelete});
   VoidCallback onDelete;
   String Text;
 bool value;
 void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Slidable(

      endActionPane: ActionPane(motion: StretchMotion(), children: [
        Expanded(
          child: GestureDetector(
            onTap:() {
              onDelete();
            },
            child: Container(
              height:70,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),
              color: const Color.fromARGB(255, 225, 97, 6)
              ),
              child: Icon(Icons.delete),
            ),
          ),
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: const Color.fromARGB(243, 229, 112, 2),
            borderRadius: BorderRadius.circular(20)
          ),
          
          
          child: Row(
            children: [
              Checkbox(value: value, onChanged: onChanged),
        
              Mytext(title: Text,check: value,)
            ],
          ),
        ),
      ),
    );
  }
}
