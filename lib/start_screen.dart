import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/Quiz_icon.png',
          width: 170,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          'Learn Flutter',
          style: GoogleFonts.robotoMono(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('START QUIZ'),
        )
      ],
    ));
  }
}
