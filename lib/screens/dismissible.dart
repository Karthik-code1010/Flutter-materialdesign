import 'package:flutter/material.dart';

class dismissible extends StatefulWidget {
  const dismissible({Key? key}) : super(key: key);

  @override
  _dismissibleState createState() => _dismissibleState();
}

class _dismissibleState extends State<dismissible> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              background: Container(
                color: Colors.green,
              ),
              key: ValueKey<int>(items[index]),
              onDismissed: (DismissDirection direction) {
                setState(() {
                  items.removeAt(index);
                });
              },
              child: ListTile(
                title: Text(
                  'Item ${items[index]}',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
