import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'package:dice_app/dice_roller.dart';

//import 'package:design_practice/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
 
  const GradientContainer.c({super.key})
      : color1 = Colors.blue,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 20, 150, 215), Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child:  const Center(
        child: DiceRoller(),
      ),
    );
  }
}
