import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_my_first_project/utils/shared_preds.dart';
import 'package:flutter_my_first_project/views/pages/homescreen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_my_first_project/utils/api.dart';
import 'package:get/get.dart';

class Authentication extends GetxController {
  final _token = ''.obs;
  final authService = AuthService();

  login(data) async {
    print(data);
    var url = Uri.parse(LOGIN_API);
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      // print(jsonResponse);
      if (jsonResponse["success"]) {
        await authService.saveToken(jsonResponse["token"]);
        Get.offAll(const HomeScreen());

        Get.snackbar(
          "Success",
          jsonResponse["message"],
          colorText: Colors.white,
          backgroundColor: Colors.green,
        );
      } else {
        Get.snackbar(
          "Error",
          jsonResponse["message"],
          colorText: Colors.white,
          backgroundColor: Colors.red,
        );
      }
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
