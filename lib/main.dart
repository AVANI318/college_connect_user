import 'package:college_connect_user/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const user_login());
}

class user_login extends StatelessWidget {
  const user_login({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'user_login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}
