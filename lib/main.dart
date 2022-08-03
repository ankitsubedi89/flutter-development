import 'package:flutter/material.dart';
import 'package:flutter_my_first_project/home_screen.dart';
import 'package:flutter_my_first_project/views/pages/calculator.dart';
import 'package:flutter_my_first_project/views/pages/home_screen.dart';
import 'package:flutter_my_first_project/views/components/my_button.dart';
import 'package:flutter_my_first_project/views/pages/home_screen.dart';
import 'package:flutter_my_first_project/views/pages/sign_up_screen.dart';
import 'package:flutter_my_first_project/views/pages/signup_page.dart';
import 'package:get/get.dart';


void main() {
  // runApp(const MaterialApp(home:HomePage()));
  // runApp(const MaterialApp(home:MyButton()));
  // runApp(const MaterialApp(home:Calculator()));
  runApp( MaterialApp(home:SignupPage()));
  // runApp(MaterialApp(
  //   home: GetMaterialApp(
  //     title: 'My First Flutter Project',
  //     home: const HomePage(),
  //   ),
  // ));
}