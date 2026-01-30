import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_button.dart';
import 'package:pinput/pinput.dart';

class MoiVerificationScreen extends StatelessWidget {
  final defaultPinTheme = PinTheme(
    width: 50,
    height: 50,
    textStyle: TextStyle(
      color: Color(0xFF89241C),
      fontFamily: 'DMSerifDisplay',
      fontSize: 25,
      fontWeight: FontWeight.normal,
    ),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(30),
    ),
  );
  MoiVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          //Background Image
          Image.asset('assets/Splash_Screen_Init.png', fit: BoxFit.cover),
          Column(
            children: [
              //Wedding Moi Logo
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset('assets/Group_1000003096_1.png', height: 90),
              ),
              SizedBox(height: 10),
              //White box container
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          'VERIFICATION',
                          style: TextStyle(
                            fontFamily: 'DMSerifDisplay',
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Pinput(
                        defaultPinTheme: defaultPinTheme,
                        length: 4,
                        onCompleted: (value) {},
                      ),
                      SizedBox(height: 15),
                      Text.rich(
                        TextSpan(
                          text: 'Re-send code in ',
                          style: TextStyle(
                            fontFamily: 'DMSerifDisplay',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                          children: [
                            TextSpan(
                              text: '30 sec',
                              style: TextStyle(
                                color: Color(0xFF89241C),
                                fontFamily: 'DMSerifDisplay',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Resend OTP',
                        style: TextStyle(
                          fontFamily: 'DMSerifDisplay',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Change number',
                        style: TextStyle(
                          color: Color(0xFF89241C),
                          fontFamily: 'DMSerifDisplay',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      AppButton(text: 'VERIFY OTP', onTap: () {}),
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
