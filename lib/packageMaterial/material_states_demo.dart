import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class statesMaterialDemo extends StatefulWidget {
  const statesMaterialDemo({Key? key}) : super(key: key);

  @override
  _statesMaterialDemoState createState() => _statesMaterialDemoState();
}

class _statesMaterialDemoState extends State<statesMaterialDemo> {
  var isHovered;
  List<bool> checked1 = [true, true, false, false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material States'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Enabled'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Disabled'),
              ),
              ElevatedButton(
                onHover: (bool) {
                  print('hover');
                },
                onPressed: () {},
                child: Text('Hover'),
              ),
              TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return Colors.blue.withOpacity(0.04);
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed))
                          return Colors.blue.withOpacity(0.12);
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  onPressed: () {},
                  child: Text('TextButton')),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black87,
                  minimumSize: Size(88, 36),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                  ),
                ),
                onPressed: () {},
                child: Text('Looks like a FlatButton'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black87,
                  primary: Colors.green[300],
                  minimumSize: Size(88, 36),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                ),
                onPressed: () {},
                child: Text('Looks like a RaisedButton'),
              ),
              FlatButton(
                focusColor: Colors.red,
                hoverColor: Colors.green,
                splashColor: Colors.blue,
                onPressed: () {},
                child: Text('FlatButton with custom overlay colors'),
              ),
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.focused))
                      return Colors.red;
                    if (states.contains(MaterialState.hovered))
                      return Colors.green;
                    if (states.contains(MaterialState.pressed))
                      return Colors.blue;
                    return null; // Defer to the widget's default.
                  }),
                ),
                onPressed: () {},
                child: Text('TextButton with custom overlay colors'),
              ),
              RaisedButton(
                disabledColor: Colors.red.withOpacity(0.12),
                disabledTextColor: Colors.red.withOpacity(0.38),
                onPressed: null,
                child: Text('RaisedButton with custom disabled colors'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(onSurface: Colors.red),
                onPressed: null,
                child: Text('ElevatedButton with custom disabled colors'),
              ),
              OutlineButton(
                shape: StadiumBorder(),
                highlightedBorderColor: Colors.blue,
                borderSide: BorderSide(width: 2, color: Colors.red),
                onPressed: () {},
                child: Text('OutlineButton with custom shape and border'),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      StadiumBorder()),
                  side: MaterialStateProperty.resolveWith<BorderSide>(
                      (Set<MaterialState> states) {
                    final Color color = states.contains(MaterialState.pressed)
                        ? Colors.blue
                        : Colors.red;
                    return BorderSide(color: color, width: 2);
                  }),
                ),
                onPressed: () {},
                child: Text('OutlinedButton with custom shape and border'),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    for (var i = 0; i < 5; i += 1)
                      Row(
                        children: [
                          Checkbox(
                            onChanged: i == 4
                                ? null
                                : (bool? value) {
                                    setState(() {
                                      checked1[i] = value!;
                                    });
                                  },
                            tristate: i == 1,
                            value: checked1[i],
                          ),
                          Text(
                            'Checkbox ${i + 1}',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(
                                    color:
                                        i == 4 ? Colors.black38 : Colors.black),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    ChoiceChip(
                      label: Text('Choice 1'),
                      selected: true,
                    ),
                    ChoiceChip(
                      label: Text('Choice 2'),
                      selected: false,
                    ),
                    ChoiceChip(
                      label: Text('Choice 3'),
                      selected: false,
                    ),
                    ChoiceChip(
                      label: Text('Choice 4'),
                      selected: false,
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    FilterChip(
                      label: Text('Filter 1'),
                      selected: true,
                      onSelected: (bool value) {},
                    ),
                    FilterChip(
                      label: Text('Filter 2'),
                      onSelected: (bool value) {},
                    ),
                    FilterChip(
                      label: Text('Filter 3'),
                      selected: true,
                      onSelected: (bool value) {},
                    ),
                    FilterChip(
                      label: Text('Filter 4'),
                      onSelected: (bool value) {},
                    ),
                    FilterChip(
                      label: Text('Filter 5'),
                      onSelected: (bool value) {},
                    ),
                    FilterChip(
                      label: Text('Filter 6'),
                      onSelected: (bool value) {},
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    ActionChip(
                      avatar: Icon(Icons.favorite),
                      label: Text('Action 1'),
                      onPressed: () {},
                    ),
                    ActionChip(
                      avatar: Icon(Icons.delete),
                      label: Text('Action 2'),
                      onPressed: () {},
                    ),
                    ActionChip(
                      avatar: Icon(Icons.alarm),
                      label: Text('Action 3'),
                      onPressed: () {},
                    ),
                    ActionChip(
                      avatar: Icon(Icons.location_on),
                      label: Text('Action 4'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
