import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_button.dart';

class MoiResetPassword extends StatefulWidget {
  const MoiResetPassword({super.key});

  @override
  State<MoiResetPassword> createState() => _MoiResetPasswordState();
}

class _MoiResetPasswordState extends State<MoiResetPassword> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/Splash_Screen_Init.png', fit: BoxFit.cover),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset('assets/Group_1000003096_1.png', height: 90),
              ),
              SizedBox(height: 20),
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
                      SizedBox(height: 20),
                      Text(
                        'RESET PASSWORD',
                        style: TextStyle(
                          fontFamily: 'DMSerifDisplay',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            obscureText: _obscure,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              hintText: 'Enter New Password',

                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(
                                  'assets/Lock.png',
                                  height: 10,
                                ),
                              ),
                              suffixIcon: IconButton(
                                iconSize: 18,
                                onPressed: () {
                                  setState(() {
                                    _obscure = !_obscure;
                                  });
                                },
                                icon: Icon(
                                  _obscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              hintStyle: TextStyle(
                                fontFamily: 'DMSerifDisplay',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            obscureText: _obscure,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              hintText: 'Confirm Password',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(
                                  'assets/Lock.png',
                                  height: 10,
                                ),
                              ),
                              suffixIcon: IconButton(
                                iconSize: 18,
                                onPressed: () {
                                  setState(() {
                                    _obscure = !_obscure;
                                  });
                                },
                                icon: Icon(
                                  _obscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              hintStyle: TextStyle(
                                fontFamily: 'DMSerifDisplay',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      AppButton(text: 'SUBMIT', onTap: () {}),
                      // GestureDetector(
                      //   onTap: () {},
                      //   child: Container(
                      //     height: 50,
                      //     width: 350,
                      //     alignment: Alignment.center,
                      //     decoration: BoxDecoration(
                      //       color: Color(0xFF89241C),
                      //       borderRadius: BorderRadius.circular(30),
                      //     ),
                      //     child: Text(
                      //       'SUBMIT',
                      //       style: TextStyle(
                      //         fontFamily: 'DMSerifDisplay',
                      //         color: Colors.white,
                      //         fontSize: 12,
                      //         fontWeight: FontWeight.normal,
                      //       ),
                      //     ),
                      //   ),
                      // ),
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
