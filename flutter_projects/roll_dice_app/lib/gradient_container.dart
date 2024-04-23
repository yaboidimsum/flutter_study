import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key}); //Super refers to the parent class constructor which is StatelessWidget in this case

  @override // Override the build method
  Widget build(context) {
    //Context is a metadata object that contains information about the current state of the app
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: StyledText()),
    );
  }
}
