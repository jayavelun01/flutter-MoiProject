import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String hint;
  final String prefixIcon;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final double width;
  final double height;
  final Widget? suffix; //

  const AppTextField({
    super.key,
    required this.hint,
    required this.prefixIcon,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.width = 350,
    this.height = 50,
    this.suffix,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.isPassword,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hint,
          hintStyle: const TextStyle(
            fontFamily: 'DMSerifDisplay',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          //Prefix Icon
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(widget.prefixIcon),
          ),
          //Suffix Icon (only for password)
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  icon: Icon(
                    _obscure ? Icons.visibility_off : Icons.visibility,
                    size: 18,
                  ),
                )
              : widget.suffix,
        ),
      ),
    );
  }
}
