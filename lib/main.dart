import 'package:edu_vista/screens/login_page.dart';
import 'package:edu_vista/screens/onboarding_page.dart';
import 'package:edu_vista/screens/reset_password_page.dart';
import 'package:edu_vista/screens/signup_page.dart';
import 'package:edu_vista/screens/splash_page.dart';
import 'package:edu_vista/utils/color_utilis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorUtility.gbScaffold,
        fontFamily: ' PlusJakartaSans',
        colorScheme: ColorScheme.fromSeed(seedColor: ColorUtility.main),
        useMaterial3: true,
      ),
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        SignUpPAge.id: (context) => const SignUpPAge(),
        ResetPasswordPage.id: (context) => const ResetPasswordPage(),
        SplashPage.id: (context) => const SplashPage(),
        OnBoardingpage.id: (context) => OnBoardingpage(),
      },
      initialRoute: OnBoardingpage.id,
    );
  }
}
