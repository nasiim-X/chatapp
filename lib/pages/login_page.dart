import 'package:chatapp/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Initialize the email controller.
    emailController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //logo
              Icon(
                Icons.message,
                size: 80,
                color: Colors.grey,
              ),

              //welcome back msg
              Text(
                "welcome back you\'ve been missed!",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              //email textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),

              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              //sign in button

              //not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
