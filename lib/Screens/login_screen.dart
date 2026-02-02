import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_button.dart';

class MoiLoginScreen extends StatefulWidget {
  const MoiLoginScreen({super.key});

  @override
  State<MoiLoginScreen> createState() => _MoiLoginScreenState();
}

class _MoiLoginScreenState extends State<MoiLoginScreen> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Splash_Screen_Init.png'),
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('assets/Group_1000003096_1.png', height: 90),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'LOGIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'DMSerifDisplay',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 55,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                          // border: Border.all(color: Colors.transparent),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(245, 255, 255, 255),
                              // blurRadius: 10,
                              spreadRadius: 1,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                              fontFamily: 'DMSerifDisplay',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            border: InputBorder.none,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(
                                'assets/Mobile.png',
                                // height: 1,
                                // width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 55,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          obscureText: _obscure,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            suffixIcon: IconButton(
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
                              color: Colors.grey.shade700,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset('assets/Lock.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/signUp');
                          },
                          child: Text(
                            'CREATE NEW ACCOUNT',
                            style: TextStyle(
                              fontFamily: 'DMSerifDisplay',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF89241C),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/forgotPassword');
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontFamily: 'DMSerifDisplay',
                              fontSize: 10,
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        AppButton(
                          text: 'LOGIN',
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
