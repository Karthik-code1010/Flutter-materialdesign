import 'package:flutter/material.dart';

void main() => runApp(SelectListItem());

class SelectListItem extends StatefulWidget {
  @override
  _SelectListItemState createState() => _SelectListItemState();
}

class _SelectListItemState extends State<SelectListItem> {
  late List<int> _selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select List Items'),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              color: (_selectedItems.contains(index))
                  ? Colors.grey.shade200
                  : Colors.transparent,
              child: ListTile(
                onTap: () {
                  if (_selectedItems.contains(index)) {
                    setState(() {
                      _selectedItems.removeWhere((val) => val == index);
                    });
                  }
                },
                onLongPress: () {
                  if (!_selectedItems.contains(index)) {
                    setState(() {
                      _selectedItems.add(index);
                    });
                  }
                },
                trailing: (_selectedItems.contains(index))
                    ? AnimatedContainer(
                        height: 60,
                        width: 60,
                        curve: Curves.fastOutSlowIn,
                        decoration: BoxDecoration(
                          // border: Border.all(
                          //   color: Color(0xFF12569A),
                          //   width: 0,
                          // ),
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        duration: Duration(seconds: 3),
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.blueAccent.shade200,
                          size: 30,
                        ),
                      )
                    : Text(''),
                title: Text('$index'),
              ),
            );
          },
        ),
      ),
    );
  }
}
