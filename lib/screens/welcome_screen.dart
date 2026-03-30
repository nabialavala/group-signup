import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final String? name;

  const WelcomeScreen({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  name != null
                      ? 'Welcome $name!'
                      : 'Welcome to Signup Adventure!',
                  textStyle: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              totalRepeatCount: 1,
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupPage(), // matches partner
                  ),
                );
              },
              child: const Text("Get Started"),
            ),

          ],
        ),
      ),
    );
  }
}