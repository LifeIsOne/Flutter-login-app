import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    super.key,
  });

  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Text("Email"),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Email",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Log-in"),
          )
        ],
      ),
    );
  }
}
