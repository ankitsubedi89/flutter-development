import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String text;
  final Function? myValidator;
  const MyField(
      {Key? key,
      required this.text,
      this.myValidator,
      required this.controller,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15),
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
              labelText: "Enter your $text",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.blue, width: 5)),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Field cannot be empty";
              }
              if (myValidator != null) {
                return myValidator!(value);
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
