import 'package:flutter/material.dart';
import 'package:moi_appdesign/Screens/login_screen.dart';

class MoiGetStartedScreen extends StatelessWidget {
  const MoiGetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Splash_Screen_Init.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .80,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 28),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80),
                bottomRight: Radius.circular(80),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/Group_1000003096_1.png',
                  // width: 60,
                  height: 90,
                ),
                SizedBox(height: 16),
                Text(
                  'To gather contributions and making your dream wedding a reality starts here.\n'
                  'Please provide your login details below to access your wedding fund dashboard',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 26),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MoiLoginScreen()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 140,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF89241C),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),

                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: 'DMSerifDisplay',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MoiLoginScreen()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 140,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: const Color(0xFF89241C)),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),

                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontFamily: 'DMSerifDisplay',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF89241C),
                      ),
                    ),
                  ),
                ),
              ],
              // fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
