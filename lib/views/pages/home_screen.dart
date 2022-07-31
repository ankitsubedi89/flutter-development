import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        for (int i = 0; i < 7; i++)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: Colors.grey,

            ),
          ),
        myRow(),
      ]),
    ));
  }
}

Widget myRow() {
  return Row(children: [
    for (int i = 0; i < 10; i++)
      Expanded(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      )),
    Expanded(
        child: Container(
      width: 100,
      height: 100,
      color: Colors.pink,
    ))
  ]);
}
