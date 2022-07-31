import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  final Function onTap;
  final String text;
  const MyButton({Key? key,  this.text = 'Click Me', required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>onTap(text),
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(10)
        ),
        height: 60,
        width:80,
        child: Center(child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)),
      ),
    );
    
  }
}