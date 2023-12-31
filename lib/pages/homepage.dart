import 'package:flutter/material.dart';
import 'package:academind_app/widgets/dice_roller.dart';
//import 'package:academind_app/widgets/styledtext.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        body: const GradientContainer(Colors.deepPurple, Colors.purpleAccent));
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
