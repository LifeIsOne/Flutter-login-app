import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Text("Email"),
          TextFormField(
            validator: (value) {
              print("value : ${value}");
              if (value!.isEmpty) {
                return "비어있을 수 없습니다.";
              } else {
                return null;
              }
            },
            controller: email,
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
            onPressed: () {
              if (formkey.currentState!.validate()) {
                // validator를 호출
                print("✅✅✅✅✅✅유효성 통과✅✅✅✅✅✅");
              }
            },
            child: Text("Log-in"),
          )
        ],
      ),
    );
  }
}
