// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:peactice/Mytext.dart';
import 'package:peactice/ToDoTile.dart';
import 'package:peactice/dialoguebox.dart';

class Practice4 extends StatefulWidget {
  const Practice4({super.key});
 
  @override
  State<Practice4> createState() => _Practice4State();
}

class _Practice4State extends State<Practice4> {

  TextEditingController _controller = TextEditingController();

  void onDelete(int index){
    setState(() {
      notes.removeAt(index);
    });
  }

  void onAdd(){
   setState(() {
     notes.add([_controller.text.toString(),false]);
     _controller.clear();
     Navigator.pop(context);
     
   });
  }

void onChanged(int index){
  setState(() {
    notes[index][1] = ! notes[index][1];
  });
}

 List notes = [
   
 ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:() {
            showDialog(context: context, builder: (context){
             return Dialoguebox(controllerX: _controller,onAdd:() {
               onAdd();
             },);
            });


      },
      child: Icon(Icons.add),),
      appBar: AppBar(
        title: Text('NOTE-IT-DOWN'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView.builder(itemCount: notes.length,itemBuilder:(context, index) {
         return Todotile(value: notes[index][1],onDelete: () {
           onDelete(index);
         } , onChanged:(p0) {
           onChanged(index);
         }, Text: notes[index][0]);
      },)
    );
  }
}