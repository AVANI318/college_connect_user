import 'package:flutter/material.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 249, 249, 250),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 80,
                    color: const Color(0xFF2A275F),
                    child: const Text(
                      "COLLEGE CONNECT",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ])));
  }
}
