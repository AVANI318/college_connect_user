import 'package:college_connect_user/common_widgets.dart/custom_button.dart';
import 'package:college_connect_user/common_widgets.dart/custom_text_formfield.dart';
import 'package:college_connect_user/util/value_validator.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isObscure = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1740677584606-a69717bad04e?q=80&w=1941&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withAlpha(100),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'Login',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Email',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      CustomTextFormField(
                        controller: _emailController,
                        labelText: 'Enter your email',
                        validator: emailValidator,
                        isLoading: false,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Password',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        //TODO:is enabled
                        controller: _passwordController,
                        obscureText: isObscure,
                        validator: notEmptyValidator,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                isObscure = !isObscure;
                                setState(() {});
                              },
                              icon: Icon(
                                isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.white,
                              )),
                          border: const OutlineInputBorder(),
                          hintText: 'Password',
                          hintStyle:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      CustomButton(
                        inverse: true,
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                          //    Process data
                          // }
                        },
                        label: 'Login',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
