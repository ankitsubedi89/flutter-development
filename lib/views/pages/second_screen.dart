import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_my_first_project/views/components/my_button.dart';

class SecondScreen extends StatefulWidget {
  final int counter;
  final add;
  final sub;
  const SecondScreen(
      {Key? key, required this.counter, required this.add, required this.sub})
      : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int newCounter = 0;
  @override
  void initState() {
    super.initState();
    newCounter = widget.counter;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
                child: Text(
              newCounter.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(
                  onTap: () => secondAdd(),
                  text: '+',
                ),
                MyButton(
                  onTap: () => secondSub(),
                  text: '-',
                ),
              ],
            ),
            MyButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'Back',
            ),
          ],
        ),
      ),
    );
  }

  secondAdd() {
    newCounter++;
    widget.add();
    setState(() {});
  }

  secondSub() {
    newCounter--;
    widget.sub();
    setState(() {});
  }
}
