import 'package:flutter/material.dart';
//import 'package:academind_app/widgets/styledtext.dart';

rollDice() {}

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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding:  const EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28
                )
              ),
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
