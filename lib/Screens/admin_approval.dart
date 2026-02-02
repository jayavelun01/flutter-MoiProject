import 'package:flutter/material.dart';

class MoiAdminApproval extends StatelessWidget {
  const MoiAdminApproval({super.key});

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
              SizedBox(height: 10),
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
                      SizedBox(height: 100),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/time-left.png'),
                            colorFilter: ColorFilter.mode(
                              const Color(0xFF89241C),
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Waiting for admin approval',
                        style: TextStyle(
                          fontFamily: 'DMSerifDisplay',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        '(once the admin approve you will be able to login)',
                        style: TextStyle(
                          fontFamily: 'DMSerifDisplay',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/home');
                        },

                        child: Container(
                          height: 40,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFF89241C),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'Refresh',
                            style: TextStyle(
                              fontFamily: 'DMSerifDisplay',
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
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
