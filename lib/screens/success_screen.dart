import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 3));

    _confettiController.play(); // 
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Success 🎉"),
        backgroundColor: Colors.purple, 
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [

          // 🎉 Confetti
          ConfettiWidget(
            confettiController: _confettiController,
            blastDirectionality: BlastDirectionality.explosive,
            shouldLoop: false,
          ),

          //  Main Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(
                Icons.check_circle,
                color: Colors.purple,
                size: 100,
              ),

              const SizedBox(height: 20),

              const Text(
                "Success!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Your account has been created 🎉",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple, 
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
                onPressed: () {
                  Navigator.pop(context); // goes back safely
                },
                child: const Text(
                  "Back",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}