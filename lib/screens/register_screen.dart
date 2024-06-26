import 'package:flutter/material.dart';
import '../widget/background_color.dart';
import '../routes/app_routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard when tapping anywhere on the screen
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          body: BackgroundColor(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Register Here',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    style: TextStyle(fontSize: 25.0, color: Colors.black),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    style: TextStyle(fontSize: 25.0, color: Colors.black),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    style: TextStyle(fontSize: 25.0, color: Colors.black),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Re-type Password',
                      labelStyle: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    style: TextStyle(fontSize: 25.0, color: Colors.black),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the login screen using named route and remove all routes below it
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        Routes.login,
                            (route) => false,
                      );
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
