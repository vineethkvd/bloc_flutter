import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? textColor;
  final String? fontFamily;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double height;
  final double width;
  final Widget? child;
  final double radius;
  final BorderSide? side;
  final String title;
  const CustomButton(
      {super.key,
        required this.onPressed,
        required this.textColor,
        required this.fontFamily,
        required this.backgroundColor,
        required this.foregroundColor,
        required this.height,
        required this.width,
        required this.child,
        required this.radius,
        required this.side,
        required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: side,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        minimumSize: Size(width, height),
        shadowColor: Colors.black54,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: child ??
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              fontFamily: fontFamily,
              fontWeight: FontWeight.w600,
            ),
          ),
    );
  }
}