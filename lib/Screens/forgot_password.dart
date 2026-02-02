import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_button.dart';

class MoiForgotPassword extends StatelessWidget {
  const MoiForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/Splash_Screen_Init.png', fit: BoxFit.cover),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset('assets/Group_1000003096_1.png', height: 90),
              ),
              SizedBox(height: 15),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          'FORGOT PASSWORD',
                          style: TextStyle(
                            fontFamily: 'DMSerifDisplay',
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [BoxShadow(color: Colors.grey)],
                        ),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          // textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            hintText: 'Enter Mobile Number',
                            hintStyle: TextStyle(
                              fontFamily: 'DMSerifDisplay',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            border: InputBorder.none,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset('assets/Mobile.png'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      AppButton(
                        text: 'SEND',
                        onTap: () {
                          Navigator.pushNamed(context, '/verification');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
