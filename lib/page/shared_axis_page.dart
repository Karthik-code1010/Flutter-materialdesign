import 'package:animations/animations.dart';

import 'package:flutter/material.dart';
import 'package:materialdesign/page/second_page.dart';

import 'first_page.dart';

class SharedAxisPage extends StatefulWidget {
  @override
  _SharedAxisPageState createState() => _SharedAxisPageState();
}

class _SharedAxisPageState extends State<SharedAxisPage> {
  bool isFirstPage = true;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Shared Axis ')),
        body: Column(
          children: <Widget>[
            Expanded(child: buildCards()),
            buildButtons(),
          ],
        ),
      );

  Widget buildCards() => PageTransitionSwitcher(
        duration: Duration(milliseconds: 3000),
        reverse: isFirstPage,
        transitionBuilder: (child, animation, secondaryAnimation) =>
            SharedAxisTransition(
          child: child,
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          transitionType: SharedAxisTransitionType.scaled,
        ),
        child: isFirstPage ? FirstPage() : SecondPage(),
      );

  Widget buildButtons() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextButton(
              onPressed: isFirstPage ? null : togglePage,
              child: Text('BACK'),
            ),
            ElevatedButton(
              onPressed: isFirstPage ? togglePage : null,
              child: Text('NEXT'),
            ),
          ],
        ),
      );

  void togglePage() => setState(() => isFirstPage = !isFirstPage);
}
