import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class viewPhotoGallery extends StatefulWidget {
  const viewPhotoGallery({Key? key}) : super(key: key);

  @override
  _viewPhotoGalleryState createState() => _viewPhotoGalleryState();
}

class _viewPhotoGalleryState extends State<viewPhotoGallery> {
  final imageList = [
    'https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111.jpg',
    'https://image.shutterstock.com/image-photo/3d-wallpaper-design-waterfall-sea-260nw-1380925703.jpg',
    'https://m.economictimes.com/thumb/msid-68721417,width-1200,height-900,resizemode-4,imgsize-1016106/nature1_gettyimages.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQus9rtXGG06QBn-Q13zk5oWKr-ryngXbTW-g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyP2vktrvo9rlhz4jQDnSsI-D-WL92iX36Ig&usqp=CAU',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PhotoViewGallery.builder(
                    itemCount: imageList.length,
                    builder: (context, index) {
                      return PhotoViewGalleryPageOptions(
                        basePosition: Alignment.center,
                        imageProvider: NetworkImage(imageList[index]),
                        minScale: PhotoViewComputedScale.contained * 0.8,
                        maxScale: PhotoViewComputedScale.covered * 2,
                      );
                    },
                    scrollPhysics: BouncingScrollPhysics(),
                    backgroundDecoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
