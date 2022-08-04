import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final myValidator;
  const MyField(
      {Key? key,
      required this.text,
      this.myValidator,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(text, textAlign: TextAlign.left,style: TextStyle(fontSize: 15),)
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            obscureText: false,
            controller: controller,
            decoration: InputDecoration(
              labelText: "Enter your $text",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              
            ),
            validator: (value){
              if(value!.isEmpty){
                return "Field cannot be empty";
              }
              return myValidator(value);
            },
          ),
        ),
      ],
    );
  }
}
