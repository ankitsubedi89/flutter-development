import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_my_first_project/controller/counter.dart';
import 'package:flutter_my_first_project/views/components/my_button.dart';
import 'package:flutter_my_first_project/views/pages/second_screen.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final counter = Get.put(Counter());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Obx(
              () => Text(
                counter.count.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
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
                  onTap: () {
                    counter.decrement();
                  },
                  text: '-',
                ),
              ],
            ),
            MyButton(
              onTap: () {
                Get.to(() => const SecondScreen());
              },
              text: 'Next Page',
            ),
          ],
        ),
      ),
    );
  }
}
