import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final bool? obscureText;
  final bool obscureText;
  final bool isPassword;
  final void Function()? onPressed;

  const CustomTextField({
    super.key,
    this.onPressed,
    this.hintText,
    this.obscureText,
    this.obscureText = false,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: obscureText == true
            ? IconButton(onPressed: onPressed, icon: Icon(Icons.visibility))
        suffixIcon: (isPassword || onPressed != null)
            ? IconButton(
                onPressed: onPressed,
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                ),
              )
            : null,
        hintText: hintText,
        contentPadding: EdgeInsets.all(20),
        contentPadding: const EdgeInsets.all(20),
        border: InputBorder.none,
      ),
    );
  }
}
