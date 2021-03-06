import 'package:flutter/material.dart';

import '../widget/card_widget.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => CardWidget(index: index),
      );
}
