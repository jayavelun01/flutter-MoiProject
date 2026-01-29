import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_button.dart';
import 'package:moi_appdesign/Widgets/app_textfield.dart';

class MoiMyprofile extends StatelessWidget {
  
  const MoiMyprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9A2143),
      appBar: AppBar(
        backgroundColor: Color(0xFF9A2143),
        centerTitle: false,
        leadingWidth: 40,
        titleSpacing: 0,
        title: Text(
          'My Profile',
          style: TextStyle(
            fontFamily: 'DMSerifDisplay',
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: Image.asset('assets/Back.png', height: 10, width: 10),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/profile.png', height: 70),
            Text(
              'Ganesh',
              style: TextStyle(
                fontFamily: 'DMSerifDisplay',
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    AppTextField(
                      hint: 'Ganesh',
                      prefixIcon: 'assets/Group.png',
                    ),
                    SizedBox(height: 5),
                    AppTextField(
                      hint: '+91 97858383929',
                      prefixIcon: 'assets/Mobile.png',
                    ),
                    SizedBox(height: 5),
                    AppTextField(
                      hint: 'test@gmail.com',
                      prefixIcon: 'assets/Email.png',
                    ),
                    SizedBox(height: 5),
                    AppTextField(
                      hint: 'Chennai',
                      prefixIcon: 'assets/City.png',
                      suffix: Icon(Icons.arrow_drop_down),
                    ),
                    SizedBox(height: 5),
                    AppTextField(
                      hint: 'Anna Nagar',
                      prefixIcon: 'assets/Maps.png',
                      suffix: Icon(Icons.arrow_drop_down),
                    ),
                    SizedBox(height: 20),
                    AppButton(text: "UPDATE PROFILE", onTap: () {}),
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
