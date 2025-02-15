import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF2A275F),
        body: SizedBox(
            height: 900,
            child: Image(image: AssetImage('assets/new_logo.jpg'))));
  }
}
