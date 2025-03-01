import 'package:flutter/material.dart';

class Stems2 extends StatelessWidget {
  const Stems2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF9A96E4),
        body: Column(children: [
          Column(children: [
            Container(
                height: 80,
                width: 700,
                color: const Color(0xFF2A275F),
                child: const Text(
                  "COLLEGE CONNECT",
                  style: TextStyle(fontSize: 30),
                )),
          ])
        ]));
  }
}
