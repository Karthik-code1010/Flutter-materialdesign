import 'package:flutter/material.dart';

class focusClass extends StatefulWidget {
  const focusClass({Key? key}) : super(key: key);

  @override
  _focusClassState createState() => _focusClassState();
}

class _focusClassState extends State<focusClass> {
  int focusedChild = 0;
  List<Widget> children = <Widget>[];
  List<FocusNode> childFocusNodes = <FocusNode>[];

  @override
  void initState() {
    super.initState();
    // Add the first child.
    _addChild();
  }

  @override
  void dispose() {
    super.dispose();
    for (final FocusNode node in childFocusNodes) {
      node.dispose();
    }
  }

  void _addChild() {
    // Calling requestFocus here creates a deferred request for focus, since the
    // node is not yet part of the focus tree.
    childFocusNodes
        .add(FocusNode(debugLabel: 'Child ${children.length}')..requestFocus());

    children.add(Padding(
      padding: const EdgeInsets.all(2.0),
      child: ActionChip(
        focusNode: childFocusNodes.last,
        label: Text('CHILD ${children.length}'),
        onPressed: () {},
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Focus class'),
      ),
      body: Center(
        child: Wrap(
          children: children,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            focusedChild = children.length;
            _addChild();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
