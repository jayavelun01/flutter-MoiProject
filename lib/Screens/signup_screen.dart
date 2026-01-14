import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_button.dart';
import 'package:moi_appdesign/Widgets/app_textfield.dart';

class MoiSignupScreen extends StatefulWidget {
  const MoiSignupScreen({super.key});

  @override
  State<MoiSignupScreen> createState() => _MoiSignupScreenState();
}

class _MoiSignupScreenState extends State<MoiSignupScreen> {
  bool _obscure = true;

  @override
  void initState() {
    super.initState();
  }

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
                  //Signup Details
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'SIGNUP',
                        style: TextStyle(
                          fontFamily: 'DMSerifDisplay',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      //Text Fields
                      AppTextField(
                        hint: 'Name',
                        prefixIcon: 'assets/Group.png',
                      ),
                      SizedBox(height: 10),
                      AppTextField(
                        hint: 'Mobile Number',
                        prefixIcon: 'assets/Mobile.png',
                      ),
                      SizedBox(height: 10),
                      AppTextField(
                        hint: 'Email',
                        prefixIcon: 'assets/Email.png',
                      ),
                      SizedBox(height: 10),
                      AppTextField(
                        hint: 'Password',
                        prefixIcon: 'assets/Lock.png',
                        isPassword: true,
                      ),
                      SizedBox(height: 10),
                      AppTextField(
                        hint: 'Confirm Password',
                        prefixIcon: 'assets/Lock.png',
                        isPassword: true,
                      ),
                      SizedBox(height: 10),
                      AppTextField(
                        hint: 'District',
                        prefixIcon: 'assets/City.png',
                        suffix: Icon(Icons.arrow_drop_down),
                      ),
                      SizedBox(height: 10),
                      AppTextField(
                        hint: 'City / Village',
                        prefixIcon: 'assets/Maps.png',
                        suffix: Icon(Icons.arrow_drop_down),
                      ),
                      SizedBox(height: 20),
                      AppButton(text: 'SIGNUP', onTap: () {}),
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
