import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? Function(String?)? validateInput;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final TextEditingController? controller;
  const CustomButton(
      {super.key,
      required this.validateInput,
      required this.hintText,
      required this.prefixIcon,
      required this.suffixIcon,
      required this.keyboardType,
      required this.contentPadding,
      required this.obscureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validateInput,
      controller: controller,
      obscureText: obscureText,

      cursorColor: Colors.black54, // Set the cursor color here
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: const TextStyle(
          color: Color(0xFF616161),
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: contentPadding,
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: const OutlineInputBorder(),
      ),
    );
  }
}
