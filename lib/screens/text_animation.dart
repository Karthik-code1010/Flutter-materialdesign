import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class textAnimation extends StatefulWidget {
  const textAnimation({Key? key}) : super(key: key);

  @override
  _textAnimationState createState() => _textAnimationState();
}

class _textAnimationState extends State<textAnimation> {
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Animation'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Hello world!',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 2000),
                  ),
                ],
                totalRepeatCount: 4,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Rotate'),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: 20.0, height: 100.0),
                const Text(
                  'Be',
                  style: TextStyle(fontSize: 43.0),
                ),
                const SizedBox(width: 20.0, height: 100.0),
                DefaultTextStyle(
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontSize: 40.0,
                    fontFamily: 'Horizon',
                  ),
                  child: AnimatedTextKit(animatedTexts: [
                    RotateAnimatedText(
                      'AWESOME',
                    ),
                    RotateAnimatedText('OPTIMISTIC'),
                    RotateAnimatedText('DIFFERENT'),
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Fade'),
            SizedBox(
              height: 10.0,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('do IT!'),
                  FadeAnimatedText('do it RIGHT!!'),
                  FadeAnimatedText('do it RIGHT NOW!!!'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Typing ....'),
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.green,
                fontSize: 30.0,
                fontFamily: 'Bobbers',
              ),
              child: AnimatedTextKit(animatedTexts: [
                TyperAnimatedText('It is not enough to do your best,'),
                TyperAnimatedText('you must know what to do,'),
                TyperAnimatedText('and then do your best'),
                TyperAnimatedText('- W.Edwards Deming'),
              ]),
            ),
            Text('Colors Change'),
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'Larry Page',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Bill Gates',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Steve Jobs',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
            Container(
              color: Colors.black,
              child: TextLiquidFill(
                text: 'LIQUIDY',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.redAccent,
                textStyle: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 300.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
