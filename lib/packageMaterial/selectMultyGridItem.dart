import 'package:flutter/material.dart';

class selectGridMultiSelect extends StatefulWidget {
  const selectGridMultiSelect({Key? key}) : super(key: key);

  @override
  _selectGridMultiSelectState createState() => _selectGridMultiSelectState();
}

class _selectGridMultiSelectState extends State<selectGridMultiSelect> {
  late List<Item> itemList;
  late List<Item> selectedList;

  @override
  void initState() {
    loadList();
    super.initState();
  }

  loadList() {
    itemList = [];
    selectedList = [];
    itemList.add(Item("assets/Apr.jpg", 1));
    itemList.add(Item("assets/Aug.jpg", 2));
    itemList.add(Item("assets/cat.jpg", 3));
    itemList.add(Item("assets/Dec.jpg", 4));
    itemList.add(Item("assets/Feb.jpg", 5));
    itemList.add(Item("assets/Jan.jpg", 6));
    itemList.add(Item("assets/Jul.jpg", 7));
    itemList.add(Item("assets/Jun.jpg", 8));
    itemList.add(Item("assets/Mar.jpg", 9));
    itemList.add(Item("assets/May.jpg", 10));
    itemList.add(Item("assets/Apr.jpg", 11));
    itemList.add(Item("assets/Aug.jpg", 12));
    itemList.add(Item("assets/cat.jpg", 13));
    itemList.add(Item("assets/Dec.jpg", 14));
    itemList.add(Item("assets/Feb.jpg", 15));
    itemList.add(Item("assets/Jan.jpg", 16));
    itemList.add(Item("assets/Jul.jpg", 17));
    itemList.add(Item("assets/Jun.jpg", 18));
    itemList.add(Item("assets/Mar.jpg", 19));
    itemList.add(Item("assets/May.jpg", 20));
  }

  getAppBar() {
    return AppBar(
      title: Text(selectedList.length < 1
          ? "Multi Selection"
          : "${selectedList.length} item selected"),
      actions: <Widget>[
        selectedList.length < 1
            ? Container()
            : InkWell(
                onTap: () {
                  setState(() {
                    for (int i = 0; i < selectedList.length; i++) {
                      itemList.remove(selectedList[i]);
                    }
                    selectedList = [];
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.delete),
                ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: GridView.builder(
          itemCount: itemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2),
          itemBuilder: (context, index) {
            return GridItem(
                item: itemList[index],
                isSelected: (bool value) {
                  setState(() {
                    if (value) {
                      selectedList.add(itemList[index]);
                    } else {
                      selectedList.remove(itemList[index]);
                    }
                  });
                  print("$index : $value");
                },
                key: Key(itemList[index].rank.toString()));
          }),
    );
  }
}

class Item {
  String imageUrl;
  int rank;

  Item(this.imageUrl, this.rank);
}

class GridItem extends StatefulWidget {
  final Key key;
  final Item item;
  final ValueChanged<bool> isSelected;

  GridItem({required this.item, required this.isSelected, required this.key});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.isSelected(isSelected);
        });
      },
      child: Stack(
        children: <Widget>[
          Image.asset(
            widget.item.imageUrl,
            color: Colors.black.withOpacity(isSelected ? 0.9 : 0),
            colorBlendMode: BlendMode.color,
          ),
          isSelected
              ? Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
