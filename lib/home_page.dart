import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromARGB(255, 37, 1, 73),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 350,
            ),
            const Text(
              'district',
              style: TextStyle(
                color: Color.fromARGB(255, 244, 242, 242),
                fontSize: 20.0,
              ),
              textAlign: TextAlign.left,
            ),
            const TextField(
                decoration: InputDecoration(
                    hintText: "select district",
                    fillColor: Colors.white,
                    border:
                        (OutlineInputBorder(borderRadius: BorderRadius.zero)))),
            const SizedBox(height: 30),
            const Text(
              'college',
              style: TextStyle(
                color: Color.fromARGB(255, 246, 244, 244),
                fontSize: 20.0,
              ),
              textAlign: TextAlign.left,
            ),
            const TextField(
                decoration: InputDecoration(
                    hintText: "select college",
                    border:
                        (OutlineInputBorder(borderRadius: BorderRadius.zero)))),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(450, 50)),
                child: const Text('Login'))
          ])),
    ));
  }
}
