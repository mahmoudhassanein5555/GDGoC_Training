import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.mainText,
    required this.hintText,
    this.oscureText,
  });
  final String mainText;
  final bool? oscureText;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          mainText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: .bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 117, 119, 121),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            obscureText: oscureText ?? false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: const Color.fromARGB(255, 255, 0, 0)),
              contentPadding: EdgeInsets.all(15),
            ),
          ),
        ),
      ],
    );
  }
}
