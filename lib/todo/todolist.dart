import 'package:flutter/material.dart';
import 'package:materialdesign/todo/todoitem.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class todoList extends StatefulWidget {
  const todoList({Key? key}) : super(key: key);

  @override
  _todoListState createState() => _todoListState();
}

class _todoListState extends State<todoList> {
  List<ToDoItem> list = <ToDoItem>[];
  late SharedPreferences sharedPreferences;

  @override
  void initState() {
    loadSharedPreferences();
    super.initState();
  }

  void loadSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
    loadData();
  }

  Widget _buildList() {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          // if (index.isOdd) {
          //   return const Divider();
          // }
          return _buildItem(list[index], index);
        });
  }

  Widget _buildItem(ToDoItem item, int index) {
    return Dismissible(
      key: Key('${item.hashCode}'),
      background: Container(
        color: Colors.red,
        child: Container(
          child: const Icon(Icons.delete),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(8),
        ),
      ),
      onDismissed: (direction) => removeItem(item),
      direction: DismissDirection.startToEnd,
      child: Theme(
        data: ThemeData(
          unselectedWidgetColor: Colors.grey,
        ),
        child: CheckboxListTile(
          onChanged: (value) => changeItemState(item),
          value: item.done,
          activeColor: Colors.indigoAccent,
          title: Text(
            item.string,
            key: Key('item-$index'),
            style: TextStyle(
                color: item.done ? Colors.grey : Colors.blueAccent,
                decoration: item.done ? TextDecoration.lineThrough : null),
          ),
        ),
        // trailing: Icon(item.done
        //   ? Icons.check_box
        //   : Icons.check_box_outline_blank,
        //   key: Key('completed-icon-$index'),
        //   color: Colors.white,
        // ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 220,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 30, left: 0),
              child: const Text(
                'to do...',
                style: TextStyle(fontSize: 26),
              ),
            ),
            const Spacer(),
            Image.asset(
              'images/masthead.png',
              fit: BoxFit.contain,
              height: 200,
            ),
          ],
        ),
        // centerTitle: true,
      ),
      body: list.isEmpty ? emptyList() : _buildList(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () => addAlertDialog(context),
        backgroundColor: Colors.indigoAccent,
        splashColor: Colors.blue,
      ),
    );
  }

  addAlertDialog(BuildContext context) {
    TextEditingController controller = TextEditingController();

    // set up the buttons
    Widget cancelButton = TextButton(
        child: const Text("CANCEL"),
        onPressed: () => Navigator.of(context).pop());
    Widget confirmButton = TextButton(
        child: const Text("CONFIRM"),
        onPressed: () => Navigator.of(context).pop(controller.text));

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: TextField(
        autofocus: true,
        onSubmitted: (value) => Navigator.of(context).pop(controller.text),
        controller: controller,
        decoration: const InputDecoration(
          labelText: 'Add Item',
          hintText: 'e.g. Buy eggs',
        ),
      ),
      actions: [
        cancelButton,
        confirmButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    ).then((value) {
      if (value != null) {
        if (value.length > 0) {
          addItem(ToDoItem(value));
        }
      }
    });
  }

  Widget emptyList() {
    return const Center(child: Text('No items'));
  }

  void changeItemState(ToDoItem item) {
    setState(() {
      item.done = !item.done;
    });
    saveData();
  }

  void addItem(ToDoItem item) {
    list.insert(0, item);
    setState(() {});
    saveData();
  }

  // void editItem(ToDoItem item, String string) {
  //   item.string = string;
  //   saveData();
  // }

  void removeItem(ToDoItem item) {
    list.remove(item);
    setState(() {});
    saveData();
  }

  void saveData() {
    List<String> stringList =
        list.map((item) => json.encode(item.toMap())).toList();
    sharedPreferences.setStringList('list', stringList);
  }

  void loadData() {
    List<String>? stringList = sharedPreferences.getStringList('list');
    if (stringList != null) {
      list = stringList
          .map((item) => ToDoItem.fromMap(json.decode(item)))
          .toList();
      setState(() {});
    }
  }
}
