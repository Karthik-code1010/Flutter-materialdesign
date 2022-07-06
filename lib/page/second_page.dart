import 'package:flutter/material.dart';

import '../widget/card_widget.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          height: 200,
          child: CardWidget(index: index),
        ),
      );
}
