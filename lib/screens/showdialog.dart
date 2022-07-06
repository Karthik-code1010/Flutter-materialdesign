import 'package:flutter/material.dart';

class showDialog extends StatefulWidget {
  const showDialog({Key? key}) : super(key: key);

  @override
  _showDialogState createState() => _showDialogState();
}

class _showDialogState extends State<showDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Dialog'),
      ),
      body: Center(),
    );
  }
}
