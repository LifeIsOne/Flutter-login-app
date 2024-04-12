import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomTextFormField(controller: email, text: "Email"),
          CustomTextFormField(
              controller: password, text: "Password", obscureText: true),
          TextButton(
            onPressed: () {
              //print("email : ${email.text}");
              if (formkey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
