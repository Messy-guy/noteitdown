// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
   Mytext({super.key,required this.title,this.size=10,this.color=const Color.fromARGB(255, 19, 19, 19),required this.check});
  String title;
  double? size;
  Color? color;
  bool check;

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(fontSize: size,color: color,decoration: check? TextDecoration.lineThrough : TextDecoration.none ),);
  }
}