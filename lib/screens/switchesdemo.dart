import 'package:flutter/material.dart';

class switchesDemo extends StatefulWidget {
  const switchesDemo({Key? key}) : super(key: key);

  @override
  _switchesDemoState createState() => _switchesDemoState();
}

class _switchesDemoState extends State<switchesDemo> {
  List<bool> _values = [true, false, true, false, false];
  @override
  Widget build(BuildContext context) {
    final int count = 4;
    return Scaffold(
      appBar: AppBar(
        title: Text('switchesDemo'),
      ),
      body: Column(
        children: <Widget>[
          for (int i = 0; i <= count; i++)
            ListTile(
              title: Text(
                'Switch ${i + 1}',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: i == count ? Colors.black38 : Colors.black),
              ),
              leading: Switch(
                value: _values[i],
                onChanged: i == count
                    ? null
                    : (bool value) {
                        setState(() {
                          _values[i] = value;
                        });
                      },
              ),
            ),
          // Center(
          //   child: Tooltip(
          //     message: 'Play',
          //     child: Icon(Icons.play_arrow),
          //   ),
          // ),
        ],
      ),
    );
  }
}
