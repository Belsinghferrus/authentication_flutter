import 'package:authentication_flutter/components/my_button.dart';
import 'package:authentication_flutter/components/my_textfield.dart';
import 'package:authentication_flutter/components/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in user
  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),

              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),

              //welcome
              Text(
                "Welcome back you've been missed!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(height: 25),

              //username textfield
              MyTextfield(
                hintText: "email",
                obscureText: false,
                controller: emailController,
              ),

              const SizedBox(height: 10),
              //password text
              MyTextfield(
                hintText: "password",
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 10),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              //sign in button
              MyButton(
                text: "Sign In",
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              //or continue with
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),
              //google or apple
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //google
                  SquareTile(
                    imagePath: 'lib/images/google.png',
                    height: 50,
                  ),
                  SizedBox(width: 10),
                  //apple
                  SquareTile(
                    imagePath: 'lib/images/apple.png',
                    height: 50,
                  ),
                ],
              ),

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Register Now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
