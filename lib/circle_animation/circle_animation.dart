import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:materialdesign/circle_animation/custom1.dart';
import 'package:materialdesign/circle_animation/custom2.dart';
import 'package:materialdesign/circle_animation/ripple.dart';

import 'stepper/src/stepper.dart';

class circleAnimate extends StatefulWidget {
  const circleAnimate({Key? key}) : super(key: key);

  @override
  _circleAnimateState createState() => _circleAnimateState();
}

class _circleAnimateState extends State<circleAnimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: SafeArea(
          child: Stack(
            children: [
              WaterFlow2(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RipplesAnimation(),
                      CustomPainter1(),
                      StepperTouch(
                        counterColor: Colors.white,
                        dragButtonColor: Colors.blue.withOpacity(0.9),
                        buttonsColor: Colors.blue.withOpacity(0.9),
                        initialValue: 0,
                        onChanged: (int value) => print('new value $value'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
