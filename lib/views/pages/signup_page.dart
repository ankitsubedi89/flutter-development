import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  final name = TextEditingController(); 
   SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter your name",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.yellow),
                      borderRadius: BorderRadius.circular(50.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
