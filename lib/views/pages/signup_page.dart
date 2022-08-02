import 'package:flutter/material.dart';
import 'package:flutter_my_first_project/views/components/my_button.dart';

class SignUpPage extends StatelessWidget {
   SignUpPage({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                "SignUp",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )),
              _myField(label: "Name", controller: nameController),
              _myField(label: "Address", controller: addressController),
              _myField(label: "Phone Number", controller: phoneNumberController),
              _myField(label: "Date of Birth", controller: dateOfBirthController),
              _myField(label: "Email", controller: emailController),
              _myField(
                  label: "Password",
                  obscureText: true,
                  controller: passwordController),
              MyButton(
                onTap: () {
                  var data = {
                    "name": nameController.text,
                    "address": addressController.text,
                    "phone number": phoneNumberController.text,
                    "date of birth": dateOfBirthController.text,
                    "email": emailController.text,
                    "password": passwordController.text
                  };
                  print(data);
                },
                text: "Submit",
              )
            ],
          ),
        ),
      )),
    );
  }

  Widget _myField(
      {label = "Email",
      obscureText = false,
      required TextEditingController controller}) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(label, textAlign: TextAlign.left),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label,
            ),
            validator: (value) {
              if (value == null) {
                return "Please enter $label";
              }
              if (value.isEmpty) {
                return "Please enter $label";
              }
              if (!value.contains("@")) {
                return "Please enter a valid $label";
              }
              // if (value) {
              //   return 'Please enter a valid email';
              // }
              return null;
            },
          ),
        ),
      ],
    );
    
  }
}