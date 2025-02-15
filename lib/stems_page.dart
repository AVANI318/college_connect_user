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
      backgroundColor: Color(0xFF9A96E4),
      body: Column(
        children: [
          Column(children: [
            Container(
              height: 80,
              width: 700,
              color: Color(0xFF2A275F),
              child: Text(
                "COLLEGE CONNECT",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Text('welcome to stems',
                style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
            Text(
              'stems id',
              style: TextStyle(
                color: const Color.fromARGB(255, 246, 244, 244),
                fontSize: 20.0,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 200,
            ),
            TextField(
                decoration: InputDecoration(
                    hintText: "enter college id",
                    border:
                        (OutlineInputBorder(borderRadius: BorderRadius.zero)))),
          ]),
          Text(
            'password',
            style: TextStyle(
              color: const Color.fromARGB(255, 246, 244, 244),
              fontSize: 20.0,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
              decoration: InputDecoration(
                  hintText: "enter password",
                  border:
                      (OutlineInputBorder(borderRadius: BorderRadius.zero)))),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: Text('Login'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
