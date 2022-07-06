import 'package:flutter/material.dart';
import 'package:animated_flip_card/animated_flip_card.dart';

class flipCartAnimate extends StatefulWidget {
  const flipCartAnimate({Key? key}) : super(key: key);

  @override
  _flipCartAnimateState createState() => _flipCartAnimateState();
}

class _flipCartAnimateState extends State<flipCartAnimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flip Cart '),
      ),
      body: Container(
        alignment: Alignment.center,
        child: AnimatedFlipCard(
            front: Image.asset(
              'assets/Apr.jpg',
              width: 250,
              fit: BoxFit.contain,
            ),
            back: Image.asset(
              'assets/Aug.jpg',
              width: 250,
              fit: BoxFit.contain,
            )),
      ),
    );
  }
}
