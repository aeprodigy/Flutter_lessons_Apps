import 'dart:math';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ConfettiController();
  //to turn the on and off for the confetti effect.
  bool isPlaying = false;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
      Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text("Confetti testing App", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              //change is playing to the opposite of is playing.
              if (isPlaying) {
                _controller.stop();
              } else {
                _controller.play();
              }
              isPlaying = !isPlaying;
            },
            child: Text("Blast up",
            style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            ),
            color: Colors.deepOrange[300],
          ),
        ),
      ),
      ConfettiWidget(confettiController: _controller,
      blastDirection: pi/2,
      colors: [
        Colors.orange,
        Colors.redAccent,
        Colors.yellow,
      ],
      gravity: 0.01,
      ),
    ]);
  }
}
