import 'package:flutter/material.dart';

class pageMove extends StatefulWidget {
  const pageMove({Key? key}) : super(key: key);

  @override
  _pageMoveState createState() => _pageMoveState();
}

class _pageMoveState extends State<pageMove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Transistion'),
      ),
    );
  }
}
