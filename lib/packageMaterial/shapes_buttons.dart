import 'package:flutter/material.dart';

class shapeButtons extends StatefulWidget {
  const shapeButtons({Key? key}) : super(key: key);

  @override
  _shapeButtonsState createState() => _shapeButtonsState();
}

class _shapeButtonsState extends State<shapeButtons> {
  Widget build(BuildContext context) {
    final text = Text('SUBMIT', style: TextStyle(fontSize: 16));
    final icon = Icon(Icons.email);

    final stadiumBorder = StadiumBorder(
      side: BorderSide(color: Colors.red),
    );

    final roundedShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(color: Colors.red),
    );

    final lessRoundedShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(color: Colors.red),
    );

    final circleShape = CircleBorder(
      side: BorderSide(color: Colors.red),
    );

    final squareShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
      side: BorderSide(color: Colors.red),
    );

    final beveledShape = BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(color: Colors.red),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Shapes'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButtonRow(shape: stadiumBorder, child: text),
            buildButtonRow(shape: roundedShape, child: text),
            buildButtonRow(shape: lessRoundedShape, child: text),
            buildButtonRow(shape: circleShape, child: icon),
            buildButtonRow(shape: squareShape, child: icon),
            buildButtonRow(shape: beveledShape, child: icon),
          ],
        ),
      ),
    );
  }

  Widget buildButtonRow({required Widget child, required ShapeBorder shape}) =>
      Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildRaisedButton(child: child, shape: shape),
            const SizedBox(width: 16),
            buildFlatButton(child: child, shape: shape),
          ],
        ),
      );

  Widget buildRaisedButton(
          {required Widget child, required ShapeBorder shape}) =>
      RaisedButton(
        child: child,
        onPressed: () {},
        shape: shape,
        color: Colors.red,
        textColor: Colors.white,
      );

  Widget buildFlatButton({required Widget child, required ShapeBorder shape}) =>
      FlatButton(
        child: child,
        onPressed: () {},
        shape: shape,
        color: Colors.white,
        textColor: Colors.red,
      );
}
