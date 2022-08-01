import 'package:flutter/material.dart';
import 'package:flutter_my_first_project/controller/counter.dart';
import 'package:flutter_my_first_project/views/components/my_button.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen(
      {Key? key,})
      : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final counter = Get.find<Counter>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Obx(()=>
               Center(
                  child: Text(
                counter.count.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(
                  onTap: () {
                    counter.increment();
                  },
                  text: '+',
                ),
                MyButton(
                  onTap: () => {
                    counter.decrement()
                  },
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
}