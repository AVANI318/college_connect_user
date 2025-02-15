import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'User Profile',
                        style: TextStyle(fontSize: 45),
                      ),
                      const Text('Name'),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 201, 196, 196),
                          hintText: "first name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 201, 196, 196),
                          hintText: "last name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('email id'),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 201, 196, 196),
                          hintText: "email address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('phone.no'),
                                TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 201, 196, 196),
                                    hintText: "***** *****",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Date of birth'),
                                TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 201, 196, 196),
                                    hintText: "dd/mm/yy",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text('residential address'),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 201, 196, 196),
                          hintText: "address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('pincode'),
                              TextField(
                                  decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 201, 196, 196),
                                hintText: "*** ***",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              ))
                            ]),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('department'),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 201, 196, 196),
                                hintText: "select",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ])),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(minimumSize: Size(450, 50)),
                child: Text('Create Account'))
          ],
        ),
      ),
    );
  }
}
