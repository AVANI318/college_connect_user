import 'package:flutter/material.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 800,
        width: 400,
        child: Container(
            color: const Color.fromARGB(255, 145, 214, 239),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.thewonderworks.ie%2Fwork%2Fcollege-connect%2F&psig=AOvVaw28IXVETnQ7Z4znLm0BjY9F&ust=1737874407039000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNCU3eukkIsDFQAAAAAdAAAAABAE'),
                    const SizedBox(
                      height: 300,
                    ),
                    const Text(
                      'User Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 40.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const Text(
                      'Username',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const TextField(
                        decoration: InputDecoration(
                            border: (OutlineInputBorder(
                                borderRadius: BorderRadius.zero)))),
                    const SizedBox(height: 30),
                    const Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    SizedBox(
                        width: 350,
                        child: TextField(
                            obscureText: isObscure,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    isObscure = !isObscure;
                                    setState(() {});
                                  },
                                  icon: Icon(isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility)),
                              fillColor: const Color.fromARGB(255, 5, 5, 5),
                              border: const OutlineInputBorder(),
                              hintText: 'Enter your password',
                            ))),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(450, 50)),
                        child: const Text('Login'))
                  ],
                ))),
      ),
    );
  }
}
