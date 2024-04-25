import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorStart, this.colorEnd,
      {super.key}); //Super refers to the parent class constructor which is StatelessWidget in this case

  final Color colorStart;
  final Color colorEnd;
  

  @override // Override the build method
  Widget build(context) {
    //Context is a metadata object that contains information about the current state of the app
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorStart, colorEnd],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
