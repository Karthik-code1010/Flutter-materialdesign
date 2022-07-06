import 'package:flutter/material.dart';
import 'package:swipe_to/swipe_to.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class guesturedemo extends StatefulWidget {
  const guesturedemo({Key? key}) : super(key: key);

  @override
  _guesturedemoState createState() => _guesturedemoState();
}

class _guesturedemoState extends State<guesturedemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _handleSwipeReply({required bool isRightSwipe, required String reply}) {
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          reply,
          textAlign: TextAlign.center,
        ),
        backgroundColor:
            isRightSwipe ? Colors.red.shade600 : Colors.green.shade600,
        duration: const Duration(milliseconds: 1000),
      ),
    );
  }

  void _displayInputBottomSheet(bool isRightSwipe) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 16.0,
              bottom: 16.0,
            ),
            child: TextField(
              autofocus: true,
              textInputAction: TextInputAction.done,
              textCapitalization: TextCapitalization.words,
              onSubmitted: (value) => _handleSwipeReply(
                  isRightSwipe: isRightSwipe ? true : false, reply: value),
              decoration: const InputDecoration(
                labelText: 'Reply',
                hintText: 'enter reply here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      5.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  double _fontSize = 20;
  final double _baseFontSize = 20;
  double _fontScale = 1;
  double _baseFontScale = 1;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Guesture Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    color = Colors.blue;
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    color = Colors.green;
                  });
                },
                onHorizontalDragStart: (DragStartDetails details) {
                  setState(() {
                    color = Colors.white;
                  });
                },
                onHorizontalDragEnd: (DragEndDetails details) {
                  setState(() {
                    color = Colors.black;
                  });
                },
                onVerticalDragStart: (DragStartDetails details) {
                  setState(() {
                    color = Colors.orange;
                  });
                },
                onVerticalDragEnd: (DragEndDetails details) {
                  print(details.primaryVelocity);
                  setState(() {
                    color = Colors.yellow;
                  });
                },
                onLongPress: () {
                  setState(() {
                    color = Colors.red;
                  });
                },
                child: Container(
                  color: color,
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            // The InkWell wraps the custom flat button widget.
            InkWell(
              // When the user taps the button, show a snackbar.
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Tap'),
                ));
              },
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('Tap'),
              ),
            ),
            // The GestureDetector wraps the button.
            GestureDetector(
              // When the child is tapped, show a snackbar.
              onTap: () {
                const snackBar = SnackBar(content: Text('Tap'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              // The custom button
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('onTap'),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              // When the child is tapped, show a snackbar.
              onLongPress: () {
                const snackBar = SnackBar(content: Text('onLongPress'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              // The custom button
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('onLongPress'),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              // When the child is tapped, show a snackbar.
              onDoubleTap: () {
                const snackBar = SnackBar(content: Text('onDoubleTap'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              // The custom button
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('onDoubleTap'),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              // When the child is tapped, show a snackbar.
              onLongPressUp: () {
                const snackBar = SnackBar(content: Text('onLongPressUp'));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              // The custom button
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text('onLongPressUp'),
              ),
            ),
            GestureDetector(
                onScaleStart: (ScaleStartDetails scaleStartDetails) {
                  _baseFontScale = _fontScale;
                },
                onScaleUpdate: (ScaleUpdateDetails scaleUpdateDetails) {
                  // don't update the UI if the scale didn't change
                  if (scaleUpdateDetails.scale == 1.0) {
                    return;
                  }
                  setState(() {
                    _fontScale = (_baseFontScale * scaleUpdateDetails.scale)
                        .clamp(0.5, 5.0);
                    _fontSize = _fontScale * _baseFontSize;
                  });
                },
                child: Text(
                  'Scale Text',
                  style: TextStyle(fontSize: _fontSize),
                )
                // descendant with a Text widget that uses the _fontSize
                ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ///SwipeToRight Example
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SwipeTo(
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: MessageViewWidget(
                            label: 'Hey You! Swipe me right 👉🏿',
                          ),
                        ),
                        onRightSwipe: () {
                          _displayInputBottomSheet(true);
                        },
                      ),
                    ],
                  ),

                  ///SwipeToLeft Example
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SwipeTo(
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: MessageViewWidget(
                            label: '👈🏿 Hey You! Swipe me Left',
                          ),
                        ),
                        onLeftSwipe: () {
                          _displayInputBottomSheet(false);
                        },
                      ),
                    ],
                  ),

                  ///SwipeToRight & SwipeToLeft Example
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SwipeTo(
                        child: const MessageViewWidget(
                          label: '👈🏿 Swipe me Left OR Swipe me right 👉🏿 ',
                        ),
                        iconOnLeftSwipe: Icons.arrow_forward,
                        leftSwipeWidget: const FlutterLogo(
                          size: 30.0,
                        ),
                        iconOnRightSwipe: Icons.arrow_back,
                        rightSwipeWidget: const FlutterLogo(
                          size: 30.0,
                        ),
                        onRightSwipe: () {
                          _displayInputBottomSheet(true);
                        },
                        onLeftSwipe: () {
                          _displayInputBottomSheet(false);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // InteractiveViewer(
            //   minScale: 0.2,
            //   maxScale: 10.2,
            //   child: Container(
            //     color: Colors.blue,
            //     width: 100,
            //     height: 100,
            //   ),
            //   // child: Image.network('https://picsum.photos/250?image=9'),
            // )
          ],
        ),
      ),
    );
  }
}

class MessageViewWidget extends StatelessWidget {
  const MessageViewWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10.0,
            ),
          ),
        ),
        child: Text(label));
  }
}
