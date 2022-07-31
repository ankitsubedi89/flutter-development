import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_my_first_project/views/components/my_button.dart';
import 'package:flutter_my_first_project/views/pages/second_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(
                  onTap: () => add(),
                  text: '+',
                ),
                MyButton(
                  onTap: () => sub(),
                  text: '-',
                ),
              ],
            ),
            MyButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(
                              counter: counter,add: add, sub: sub
                            )));
              },
              text: 'Next Page',
            ),
          ],
        ),
      ),
    );
  }

  add() {
    counter = counter + 1;
    setState(() {});
  }

  sub() {
    counter = counter - 1;
    setState(() {});
  }
}
