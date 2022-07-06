import 'package:flutter/material.dart';

class photoHero extends StatefulWidget {
  const photoHero({Key? key}) : super(key: key);

  @override
  _photoHeroState createState() => _photoHeroState();
}

class _photoHeroState extends State<photoHero> {
  Widget _blueRectangle(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.blue,
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('second Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'hero-rectangle',
                child: _blueRectangle(const Size(200, 200)),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Class'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20.0,
          ),
          ListTile(
            leading: Hero(
              tag: 'hero-rectangle',
              child: _blueRectangle(const Size(50, 50)),
            ),
            onTap: () => _gotoDetailsPage(context),
            title: const Text(
                'Tap on the icon to view hero animation transition.'),
          ),
        ],
      ),
    );
  }
}
