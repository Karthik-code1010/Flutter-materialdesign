// import 'dart:ffi';
//
// import 'package:flutter/material.dart';
//
// class animatedIcon extends StatefulWidget {
//   const animatedIcon({Key? key}) : super(key: key);
//
//   @override
//   _animatedIconState createState() => _animatedIconState();
// }
//
// class _animatedIconState extends State<animatedIcon> {
//   late AnimationController _animationController;
//   bool isPlaying = false;
//   @override
//   void initState() {
//     super.initState();
//     _animationController =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 450));
//   }
//
//   void _handleOnPressed() {
//     setState(() {
//       isPlaying = !isPlaying;
//       isPlaying
//           ? _animationController.forward()
//           : _animationController.reverse();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Animated Icon'),
//         ),
//         body: Center(
//           child: IconButton(
//             iconSize: 150,
//             splashColor: Colors.greenAccent,
//             icon: AnimatedIcon(
//               icon: AnimatedIcons.play_pause,
//               progress: _animationController,
//             ),
//             onPressed: () => _handleOnPressed(),
//           ),
//         ));
//   }
// }
