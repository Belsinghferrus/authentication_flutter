import 'package:authentication_flutter/components/my_button.dart';
import 'package:authentication_flutter/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in user
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
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
                hintText: "username",
                obscureText: false,
                controller: usernameController,
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

              //google or apple
              // Row(
              //   children: [
                  
              //   ],
              // )

              // not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
