import 'package:flutter/material.dart';
import 'package:materialdesign/custom_poiter_flutter_boxy/time_line_item.dart';

import 'custom_time_line.dart';

class flutterBoxy extends StatefulWidget {
  const flutterBoxy({Key? key}) : super(key: key);

  @override
  _flutterBoxyState createState() => _flutterBoxyState();
}

class _flutterBoxyState extends State<flutterBoxy> {
  final activeColor = Colors.blue[800]!;
  final inactiveColor = Colors.grey[600]!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom Pointer Flutter Boxy'),
        ),
        body: SingleChildScrollView(
            child: CustomTimeLine(
          activeColor: activeColor,
          inactiveColor: inactiveColor,
          content: [
            TimeLineItem(label: "First Lecture", color: activeColor),
            TimeLineItem(label: "Second Lecture", color: activeColor),
            TimeLineItem(label: "Third Lecture", color: activeColor),
            TimeLineItem(label: "Fourth Lecture", color: activeColor),
            TimeLineItem(
                label: "Fifth Lecture", color: inactiveColor, isActive: false),
            TimeLineItem(
                label: "Sixth Lecture", color: inactiveColor, isActive: false),
          ],
        )));
  }
}
