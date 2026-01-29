import 'package:flutter/material.dart';
import 'package:moi_appdesign/Screens/add_collection_01.dart';
import 'package:moi_appdesign/Screens/admin_approval.dart';
import 'package:moi_appdesign/Screens/create_function.dart';
import 'package:moi_appdesign/Screens/home_screen.dart';
import 'package:moi_appdesign/Screens/myprofile_screen.dart';
import 'package:moi_appdesign/Screens/notifications_screen.dart';
import 'package:moi_appdesign/Screens/view_CollectionDetails.dart';
import 'package:moi_appdesign/Screens/view_collection.dart';
import 'package:moi_appdesign/Screens/view_functions.dart';
import 'package:moi_appdesign/Widgets/app_theme.dart';
import 'package:moi_appdesign/Screens/forgot_password.dart';
import 'package:moi_appdesign/Screens/getstarted_screen.dart';
import 'package:moi_appdesign/Screens/login_screen.dart';
import 'package:moi_appdesign/Screens/reset_password.dart';
import 'package:moi_appdesign/Screens/signup_screen.dart';
import 'package:moi_appdesign/Screens/splash_screen.dart';
import 'package:moi_appdesign/Screens/verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(useMaterial3: true, colorScheme: AppColors.lightScheme),
      // themeMode: ThemeMode.system,
      // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF89241C)),
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      home: const MoiHomeScreen(),
      routes: {
        '/notifications': (context) => MoiNotifications(),
        '/myProfile': (context) => MoiMyprofile(),
        // '/': (context) => MoiAddCollections(),
        // '/': (context) => MoiCollectionDetails(),
        // '/': (context) => MoiViewCollection(),
        // '/': (context) => MoiSplashScreen(),
        // '/': (context) => MoiResetPassword(),
        '/viewFunction': (context) => MoiViewFunctions(),
        '/createFunction': (context) => MoiCreateFunction(),
        '/home': (context) => MoiHomeScreen(),
        // '/': (context) => MoiAdminApproval(),
        // '/': (context) => MoiSignupScreen(),
        // '/verification_screen': (context) => MoiVerificationScreen(),
        // '/forgot_Screen': (context) => MoiForgotPassword(),
        // '/getStarted_Screen': (context) => MoiGetStartedScreen(),
        // '/login_Screen': (context) => MoiLoginScreen(),
      },
    );
  }
}
