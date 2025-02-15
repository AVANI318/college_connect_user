import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Stems3 extends StatelessWidget {
  const Stems3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 239, 241),
        body: Column(children: [
          Container(
            height: 80,
            width: 700,
            color: Color(0xFF2A275F),
            child: Text(
              "COLLEGE CONNECT",
              style: TextStyle(fontSize: 30),
            ),
          )
        ]));
  }
}
