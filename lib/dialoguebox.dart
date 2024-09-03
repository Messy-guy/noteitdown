import 'package:flutter/material.dart';

class Dialoguebox extends StatelessWidget {
   Dialoguebox({super.key,required this.controllerX, required this.onAdd});
  TextEditingController controllerX;
  VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 200,
        width: 200,
        color: Colors.white.withOpacity(0.1),
        child: Column(
          children: [
            TextField(
              controller:controllerX ,
              decoration: InputDecoration(
                hintText: 'Add your do to list note',
                hintStyle: TextStyle(fontWeight: FontWeight.w300),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    onAdd();
                  },
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                    child:  Center(child: Text('ADD',style: TextStyle(
                      fontSize: 10,
                    ),)),
                  ),
                ),
                SizedBox(width: 130,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                    child:  Center(child: Text('CANCEL',style: TextStyle(
                      fontSize: 10,
                    ),)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}