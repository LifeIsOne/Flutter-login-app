import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  final controller;
  final text;
  final obscureText;

  CustomTextFormField({
    required this.controller,
    required this.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: mediumGap),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${text}"),
          TextFormField(
            obscureText: obscureText,
            validator: (value) {
              print("value : ${value}");

              if (value!.isEmpty) {
                return "비어있을수 없습니다";
              } else {
                return null; // 정상일때 null을 리턴한다.
              }
            },
            controller: controller,
            decoration: InputDecoration(
              hintText: "Enter ${text}",
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
        ],
      ),
    );
  }
}
