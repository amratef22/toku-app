import 'package:flutter/material.dart';

class Category extends StatelessWidget {
   Category({this.text,this.color,this.ontab});

  String? text;
  Color? color;
  Function()? ontab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        alignment:Alignment.centerLeft ,
        height: 70,
        width: double.infinity,
        color: color,
        child:  Text(text!,
          style:const TextStyle(
            fontSize: 20,
            color: Colors.white,

          ),
        ),
      ),
    );
  }
}
