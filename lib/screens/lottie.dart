import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class lottieDemo extends StatefulWidget {
  const lottieDemo({Key? key}) : super(key: key);

  @override
  _lottieDemoState createState() => _lottieDemoState();
}

class _lottieDemoState extends State<lottieDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie'),
      ),
      body: ListView(
        children: [
          // Load a Lottie file from your assets
          // Lottie.asset('assets/LottieLogo1.json'),

          // Load a Lottie file from a remote url
          Lottie.network(
              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),

          //https://assets5.lottiefiles.com/packages/lf20_tjbhujef.json
          Lottie.network(
              'https://assets5.lottiefiles.com/packages/lf20_tjbhujef.json'),

          // Load an animation and its images from a zip file
          //https://assets9.lottiefiles.com/packages/lf20_mbuQi9.json
          Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_mbuQi9.json'),
          // Lottie.asset('assets/lottiefiles/angel.zip'),
        ],
      ),
    );
  }
}
