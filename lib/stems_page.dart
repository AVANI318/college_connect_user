import 'package:flutter/material.dart';

class StemsPage extends StatefulWidget {
  const StemsPage({super.key});

  @override
  State<StemsPage> createState() => _StemsPageState();
}

class _StemsPageState extends State<StemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9A96E4),
      body: Column(
        children: [
          Column(children: [
            Container(
              height: 80,
              width: 700,
              color: const Color(0xFF2A275F),
              child: const Text(
                "COLLEGE CONNECT",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Text('welcome to stems',
                style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
            const Text(
              'stems id',
              style: TextStyle(
                color: Color.fromARGB(255, 246, 244, 244),
                fontSize: 20.0,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 200,
            ),
            const TextField(
                decoration: InputDecoration(
                    hintText: "enter college id",
                    border:
                        (OutlineInputBorder(borderRadius: BorderRadius.zero)))),
          ]),
          const Text(
            'password',
            style: TextStyle(
              color: Color.fromARGB(255, 246, 244, 244),
              fontSize: 20.0,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
              decoration: InputDecoration(
                  hintText: "enter password",
                  border:
                      (OutlineInputBorder(borderRadius: BorderRadius.zero)))),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: const Text('Login'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
