import 'package:flutter/material.dart';

class MoiMenu extends StatelessWidget {
  const MoiMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9A2143),
      appBar: AppBar(leading: Icon(Icons.menu)),
    );
  }
}