import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:cached_network_image/cached_network_image.dart';

class photoView extends StatefulWidget {
  const photoView({Key? key}) : super(key: key);

  @override
  _photoViewState createState() => _photoViewState();
}

class _photoViewState extends State<photoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo View'),
      ),
      body: Center(
        child: Container(
            child: PhotoView(
          imageProvider:
              CachedNetworkImageProvider("https://picsum.photos/250?image=9"),
        )),
      ),
    );
  }
}
