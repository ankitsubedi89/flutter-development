import 'package:flutter/material.dart';
import 'package:flutter_my_first_project/views/components/my_button.dart';
import 'package:flutter_my_first_project/views/components/my_field.dart';

class SignupPage extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyField(
                  text: 'Name',
                  controller: nameController,
                ),
                MyField(
                  text: 'Address',
                  controller: addressController,
                ),
                MyField(
                  text: 'Phone Number',
                  controller: phoneController,
                ),
                MyField(
                  text: 'Email',
                  controller: emailController,
                  myValidator: (value) {
                    if (!value.toString().contains("@")) {
                      return "Email is not valid";
                    }
                    return null;
                  },
                ),
                MyField(
                  text: 'Password',
                  controller: passwordController,
                ),
                MyField(
                  text: 'Confirm Password',
                  controller: confirmController,
                ),
                MyButton(
                  onTap: () {
                    var isFormValid = formKey.currentState!.validate();
                    if (isFormValid) {
                      var data = {
                        "name": nameController.text,
                        "address": addressController.text,
                        "phone number": phoneController.text,
                        "email": emailController.text,
                        "passowrd": passwordController.text,
                        "confirm password": confirmController.text,
                      };
                      print(data);
                    }
                  },
                  text: "Submit",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
