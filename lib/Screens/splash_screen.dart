import 'package:flutter/material.dart';
import 'package:moi_appdesign/Screens/getstarted_screen.dart';

class MoiSplashScreen extends StatefulWidget {
  const MoiSplashScreen({super.key});

  @override
  State<MoiSplashScreen> createState() => _MoiSplashScreenState();
}

class _MoiSplashScreenState extends State<MoiSplashScreen> {
  @override
  void initState() {
    super.initState();

    // _initializeApp();

    // Future<void> _initializeApp() async {
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MoiGetStartedScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/01_Splash Screen.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/Group_1000003096_1.png',
              width: 300,
              height: 300,
            ),
          ),
        ],
      ),
    );
    // backgroundColor: Colors.pink[100]
  }
}
