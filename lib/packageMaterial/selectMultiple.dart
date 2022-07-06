import 'package:flutter/material.dart';

class selectMultipleItem extends StatefulWidget {
  const selectMultipleItem({Key? key}) : super(key: key);

  @override
  _selectMultipleItemState createState() => _selectMultipleItemState();
}

class _selectMultipleItemState extends State<selectMultipleItem> {
  int optionSelected = 0;

  void checkOption(int index) {
    setState(() {
      optionSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection and Settings $optionSelected'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          for (int i = 0; i < months.length; i++)
            MonthOption(
              months[i]['month'] as String,
              img: months[i]['img'] as String,
              onTap: () => checkOption(i + 1),
              selected: i + 1 == optionSelected,
            )
        ],
      ),
    );
  }
}

class MonthOption extends StatelessWidget {
  const MonthOption(
    this.title, {
    Key? key,
    required this.img,
    required this.onTap,
    required this.selected,
  }) : super(key: key);

  final String title;
  final String img;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Ink.image(
      fit: BoxFit.cover,
      image: AssetImage(img),
      child: InkWell(
        onTap: onTap,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: selected ?? false ? Colors.red : Colors.transparent,
                  width: selected ?? false ? 5 : 0,
                ),
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Row(children: <Widget>[
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: selected ?? false
                      ? Colors.blue.withOpacity(0.8)
                      : Colors.black54,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  title ?? '',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

const List<Map<String, dynamic>> months = <Map<String, dynamic>>[
  <String, dynamic>{
    'month': 'January',
    'img': 'assets/Jan.jpg',
  },
  <String, dynamic>{
    'month': 'February',
    'img': 'assets/Feb.jpg',
  },
  <String, dynamic>{
    'month': 'March',
    'img': 'assets/Mar.jpg',
  },
  <String, dynamic>{
    'month': 'April',
    'img': 'assets/Apr.jpg',
  },
  <String, dynamic>{
    'month': 'May',
    'img': 'assets/May.jpg',
  },
  <String, dynamic>{
    'month': 'June',
    'img': 'assets/Jun.jpg',
  },
  <String, dynamic>{
    'month': 'July',
    'img': 'assets/Jul.jpg',
  },
  <String, dynamic>{
    'month': 'August',
    'img': 'assets/Aug.jpg',
  },
  <String, dynamic>{
    'month': 'September',
    'img': 'assets/Sep.jpg',
  },
  <String, dynamic>{
    'month': 'October',
    'img': 'assets/Oct.jpg',
  },
  <String, dynamic>{
    'month': 'November',
    'img': 'assets/Nov.jpg',
  },
  <String, dynamic>{
    'month': 'December',
    'img': 'assets/Dec.jpg',
  },
];
