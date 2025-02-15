import 'package:flutter/material.dart';

class Stems2 extends StatelessWidget {
  const Stems2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF9A96E4),
        body: Column(children: [
          Column(children: [
            Container(
                height: 80,
                width: 700,
                color: Color(0xFF2A275F),
                child: Text(
                  "COLLEGE CONNECT",
                  style: TextStyle(fontSize: 30),
                )),
          ])
        ]));
  }
}
