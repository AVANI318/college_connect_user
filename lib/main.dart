import 'package:college_connect_user/features/login/user_login.dart';
import 'package:college_connect_user/theme/app_theme.dart';
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
      title: 'user_login',
      theme: appTheme,
      home: SignInScreen(),
    );
  }
}
