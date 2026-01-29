import 'package:flutter/material.dart';

class AppTextfieldNormal extends StatefulWidget {
  final String hint;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final double width;
  final double height;
  final EdgeInsetsGeometry contentPadding;
  final Widget? suffix;
  final Widget? prefix;
  final bool alignHintTop;

  const AppTextfieldNormal({
    super.key,
    required this.hint,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.width = 350,
    this.height = 40,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 18,
    ),
    this.suffix,
    this.prefix,
    this.alignHintTop = false,
  });

  @override
  State<AppTextfieldNormal> createState() => _AppTextfieldNormal();
}

class _AppTextfieldNormal extends State<AppTextfieldNormal> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,

        // conditional override
        textAlignVertical: widget.alignHintTop
            ? TextAlignVertical.top
            : TextAlignVertical.center,

        maxLines: widget.alignHintTop ? null : 1,
        expands: widget.alignHintTop,

        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hint,
          contentPadding: widget.contentPadding,
          hintStyle: const TextStyle(
            fontFamily: 'DMSerifDisplay',
            fontSize: 10,
          ),
          suffixIcon: widget.suffix,
          prefixIcon: widget.prefix,
        ),
      ),
    );
  }
}
