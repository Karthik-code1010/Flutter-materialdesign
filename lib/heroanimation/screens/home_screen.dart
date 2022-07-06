import 'dart:developer';
import 'package:flutter/material.dart';

import '../widgets/grid_expandable_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildGhostAppBar,
      body: Column(
        children: [
          _buildHead(context),
          _buildBody(context),
        ],
      ),
    );
  }

  AppBar get _buildGhostAppBar {
    return AppBar(
      toolbarHeight: 0.0,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    );
  }

  Widget _buildHead(context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      height: 100.0,
      padding: const EdgeInsets.only(left: 0.0, top: 2.0, bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  log('Back Button On Press');
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.grey,
                iconSize: 20.0,
              ),
              // SafeArea(
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 0.0),
              //     child: Text(
              //       'Cutfinger of\nCollection',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontFamily: 'MrsSheppards',
              //         fontSize: 20.0,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          // Container(
          //   height: double.infinity,
          //   padding: const EdgeInsets.only(left: 10.0, right: 20.0),
          //   decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          //     BoxShadow(color: Colors.black26, blurRadius: 15.0),
          //   ]),
          //   alignment: Alignment.center,
          //   child: RotatedBox(
          //     quarterTurns: 3,
          //     child: Text(
          //       'Cutfinger',
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontWeight: FontWeight.w500,
          //         fontSize: 19.0,
          //         height: .5,
          //         letterSpacing: 1.5,
          //         decorationStyle: TextDecorationStyle.solid,
          //         decoration: TextDecoration.underline,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          color: Colors.transparent,
          child: GridExpandableView(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 10.0),
                  ],
                ),
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    const Icon(
                      Icons.image,
                      size: 100.0,
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      '$index',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
