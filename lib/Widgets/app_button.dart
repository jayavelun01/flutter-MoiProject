import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  final Color backgroundColor;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;

  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width = 350,
    this.height = 50,
    this.backgroundColor = const Color(0xFF89241C),
    this.textStyle,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement button
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius ?? BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style:
              textStyle ??
              const TextStyle(
                fontFamily: 'DMSerifDisplay',
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
        ),
      ),
    );
  }
}
