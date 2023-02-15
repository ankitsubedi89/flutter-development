import 'package:flutter/material.dart';
import 'package:flutter_my_first_project/views/components/my_button.dart';
import 'package:flutter_my_first_project/views/components/my_field.dart';
import 'package:flutter_my_first_project/views/pages/login_screen.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
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
                Image.asset("assets/images/logo.png", height: 100, width: 200,),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text("New Registration", style: TextStyle(fontSize: 20),),
                ),
                MyField(
                  text: 'Name',
                  controller: nameController,
                  // myValidator: (value){
                  // return null;}
                ),
                MyField(
                  text: 'User Name',
                  controller: usernameController,
                  // myValidator: (value){
                  // return null;}
                ),
                MyField(
                  text: 'Phone Number',
                  controller: phoneController,
                  // myValidator: (value){
                  // return null;}
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
                  obscureText: true,
                  text: 'Password',
                  controller: passwordController,
                  // myValidator: (value){
                  // return null;}
                ),
                MyField(
                  obscureText: true,
                  text: 'Confirm Password',
                  controller: confirmController,
                  myValidator: (value){
                    if(!(passwordController.text == confirmController.text)){
                      return 'Password doesnot match';
                    }
                  return null;}
                ),
                MyButton(
                  onTap: () {
                    var isFormValid = formKey.currentState!.validate();
                    if (isFormValid) {
                      var data = {
                        "name": nameController.text,
                        "address": usernameController.text,
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Already have an account?"),
                ),
                InkWell(
                  onTap: () {
                    Get.to( LoginScreen());
                  },
                  child: const Text("Login",style: TextStyle(color: Colors.blue,fontSize: 17, fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
