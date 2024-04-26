import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset('assets/images/logo/quiz_logo.png',
            width: 300, color: const Color.fromARGB(150, 66, 184, 131)),
        const SizedBox(height: 64),
        const Text("Learn Flutter the fun way!",
            style: TextStyle(
              fontSize: 24,
              color: Color(0xff42b883),
              fontWeight: FontWeight.w600,
            )),
        const SizedBox(height: 64),
        OutlinedButton.icon(
          onPressed: switchScreen,
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color(0xff42b883),
            backgroundColor: const Color(0xff35495e),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          icon: const Icon(Icons.play_arrow),
          label: const Text('Start Quiz!'),
        ),
      ]),
    );
  }
}
