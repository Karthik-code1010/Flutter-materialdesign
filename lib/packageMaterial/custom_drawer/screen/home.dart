import 'package:flutter/material.dart';
import 'package:materialdesign/packageMaterial/custom_drawer/widget/drawer.dart';

class customDrawer extends StatefulWidget {
  const customDrawer({Key? key}) : super(key: key);

  @override
  _customDrawerState createState() => _customDrawerState();
}

class _customDrawerState extends State<customDrawer> {
  void showDrawer() {
    print('tapped on show drawer!');
    setState(() {
      _showDrawer = !_showDrawer;
    });
  }

  bool _showDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Flutter Drawer'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: showDrawer,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.menu_rounded,
            ),
          ),
          body: Column(
            children: [
              Center(
                child: Image(
                  image: AssetImage(
                    'assets/Apr.jpg',
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_showDrawer)
          DrawerWidget(
            closeFunction: showDrawer,
          ),
      ],
    );
  }
}
