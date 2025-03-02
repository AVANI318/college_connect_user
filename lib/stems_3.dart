import 'package:flutter/material.dart';

class Stems3 extends StatelessWidget {
  const Stems3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 239, 241),
        body: Column(children: [
          Container(
            height: 80,
            width: 700,
            color: const Color(0xFF2A275F),
            child: const Text(
              "COLLEGE CONNECT",
              style: TextStyle(fontSize: 30),
            ),
          )
        ]));
  }
}
