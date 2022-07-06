import 'package:flutter/material.dart';
import 'package:materialdesign/packageMaterial/GridAnimation/shaky_listanimate.dart';
import 'package:materialdesign/packageMaterial/animated_icons.dart';
import 'package:materialdesign/packageMaterial/custom_drawer/screen/home.dart';
import 'package:materialdesign/packageMaterial/datepicker/datepick.dart';
import 'package:materialdesign/packageMaterial/flipcart_animate.dart';
import 'package:materialdesign/packageMaterial/list_grid_animate.dart';
import 'package:materialdesign/packageMaterial/material_states_demo.dart';
import 'package:materialdesign/packageMaterial/percentage_progress.dart';
import 'package:materialdesign/packageMaterial/pinchview.dart';
import 'package:materialdesign/packageMaterial/selectMultiple.dart';
import 'package:materialdesign/packageMaterial/selectMultyGridItem.dart';
import 'package:materialdesign/packageMaterial/selectlistitem.dart';
import 'package:materialdesign/packageMaterial/shapes_buttons.dart';
import 'package:materialdesign/packageMaterial/swipeable_button/swipeablebutton.dart';
import 'package:materialdesign/page/shared_axis_page.dart';
import 'package:materialdesign/screens/absorbpointer.dart';
import 'package:materialdesign/screens/animatedbutton.dart';
import 'package:materialdesign/screens/animatedcontainer.dart';
import 'package:materialdesign/screens/animatedicon.dart';
import 'package:materialdesign/screens/animatedlist.dart';
import 'package:materialdesign/screens/curve_navigation_bar.dart';
import 'package:materialdesign/screens/dismissible.dart';
import 'package:materialdesign/screens/draganddrop.dart';
import 'package:materialdesign/screens/draggable.dart';
import 'package:materialdesign/screens/drawer.dart';
import 'package:materialdesign/screens/fancy_bottom_navigation.dart';
import 'package:materialdesign/screens/focusclass.dart';
import 'package:materialdesign/screens/guesturedemo.dart';
import 'package:materialdesign/screens/intractive_viewer.dart';
import 'package:materialdesign/screens/lottie.dart';
import 'package:materialdesign/screens/navigation_nail.dart';
import 'package:materialdesign/screens/pagenavigation.dart';
import 'package:materialdesign/screens/photohero.dart';
import 'package:materialdesign/screens/photoview.dart';
import 'package:materialdesign/screens/scalling.dart';
import 'package:materialdesign/screens/sliderdemo.dart';
import 'package:materialdesign/screens/slinder.dart';
import 'package:materialdesign/screens/springing_motion.dart';
import 'package:materialdesign/screens/stepper.dart';
import 'package:materialdesign/screens/switchesdemo.dart';
import 'package:materialdesign/screens/text_animation.dart';
import 'package:materialdesign/screens/time_picker.dart';
import 'package:materialdesign/screens/viewphotogallery.dart';
import 'package:materialdesign/todo/todolist.dart';
import 'package:materialdesign/transition_animation/page/home_page.dart';
import 'package:shimmer/shimmer.dart';
import 'package:page_transition/page_transition.dart';

import 'animations/animatedemo.dart';
import 'circle_animation/circle_animation.dart';
import 'custom_poiter_flutter_boxy/boxy.dart';
import 'heroanimation/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shimmer',
      routes: <String, WidgetBuilder>{
        'loading': (_) => LoadingListPage(),
        'slide': (_) => SlideToUnlockPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        // 0x2B292388
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Design'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text('Loading List'),
              onTap: () => Navigator.of(context).pushNamed('loading'),
            ),
            // ListTile(
            //   title: const Text('Slide To Unlock'),
            //   onTap: () => Navigator.of(context).pushNamed('slide'),
            // )
            // ListTile(
            //     title: const Text('Animated icons'),
            //     onTap: () => Navigator.of(context).push(
            //         MaterialPageRoute(builder: (context) => animatedIcon()))),
            ListTile(
                title: const Text('Focus class'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => focusClass()))),

            //AbsorbPointer
            ListTile(
                title: const Text('AbsorbPointer '),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => toucheffect()))),

            //Dismissible
            ListTile(
                title: const Text('Dismissible'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => dismissible()))),
            ListTile(
                title: const Text('Draggable'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => draggable()))),
            ListTile(
                title: const Text('InteractiveViewer'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => interactiveViewer()))),
            //interactiveViewer

            //animatedContainer
            ListTile(
                title: const Text('AnimatedContainer'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => animatedContainer()))),

            // ListTile(
            //     title: const Text('Show Dialog'),
            //     onTap: () => Navigator.of(context).push(MaterialPageRoute(
            //         builder: (context) => animatedContainer()))),

            //PhysicsCardDragDemo
            ListTile(
                title: const Text('Springing Motion'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PhysicsCardDragDemo()))),

            ListTile(
                title: const Text('Photo View'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => photoView()))),

            //viewPhotoGallery
            ListTile(
                title: const Text('View PhotoGallery'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => viewPhotoGallery()))),

            //pageMove
            ListTile(
                title: const Text('Page Transisition'),
                onTap: () => {
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.fade,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.leftToRight,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeft,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.topToBottom,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.bottomToTop,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.scale,
                      //         alignment: Alignment.bottomCenter,
                      //         child: pageMove())),
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.scale,
                              alignment: Alignment.center,
                              duration: Duration(seconds: 3),
                              child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rotate,
                      //         duration: Duration(second: 1),
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeftWithFade,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.leftToRightWithFade,
                      //         child: pageMove())),
                    }),
            ListTile(
                title: const Text('Page fade Transisition'),
                onTap: () => {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(seconds: 2),
                              child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.leftToRight,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeft,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.topToBottom,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.bottomToTop,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.scale,
                      //         alignment: Alignment.bottomCenter,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.scale,
                      //         alignment: Alignment.center,
                      //         duration: Duration(seconds: 3),
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rotate,
                      //         duration: Duration(second: 1),
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeftWithFade,
                      //         child: pageMove())),
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.leftToRightWithFade,
                      //         child: pageMove())),
                    }),
            ListTile(
                title: const Text('Shared Axis'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SharedAxisPage()))),

            //stepperClass
            ListTile(
                title: const Text('Stepper'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => stepperClass()))),

            //drawerClass

            ListTile(
                title: const Text('Drawer'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => drawerClass()))),

            //navigationNail
            ListTile(
                title: const Text('NavigationNail'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => navigationNail()))),

            //photoHero
            ListTile(
                title: const Text('Hero Class'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => photoHero()))),

            //BouncingButton
            ListTile(
                title: const Text('BouncingButton'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BouncingButton()))),

            //textAnimation
            ListTile(
                title: const Text('Text Animation'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => textAnimation()))),

            //AnimatedListSample
            ListTile(
                title: const Text('Animated List Sample'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AnimatedListSample()))),

            //BottomNavBar
            ListTile(
                title: const Text('BottomNavBar'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BottomNavBar()))),

            //CarouselDemo
            ListTile(
                title: const Text('CarouselDemo'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CarouselDemo()))),

            //lottieDemo
            ListTile(
                title: const Text('lottieDemo'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => lottieDemo()))),

            //_TransitionsHomePage
            ListTile(
                title: const Text('TransitionsHomePage'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TransitionsHomePage()))),
            //fancyBottomNavigation
            ListTile(
                title: const Text('fancyBottomNavigation'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => fancyBottomNavigation()))),

            //todoList
            ListTile(
                title: const Text('TodoList'),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => todoList()))),
            //ScaleAnimation
            ListTile(
                title: const Text('ScaleAnimation'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ScaleAnimation(
                          child: todoList(),
                        )))),
            //HomePage
            ListTile(
                title: const Text('Transition Animation'),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()))),
            //HomeScreen
            ListTile(
                title: const Text('Hero Animation'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()))),
            //
            ListTile(
                title: const Text('Custom Pointer Flutter Boxy'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => flutterBoxy()))),

            //circleAnimate
            ListTile(
                title: const Text('Circle Animate'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => circleAnimate()))),
            //sliderDemo
            ListTile(
                title: const Text('sliderDemo'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => sliderDemo()))),
            //timepickerDemo
            ListTile(
                title: const Text('Time Picker'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => timepickerDemo()))),
            //switchesDemo
            ListTile(
                title: const Text('switchesDemo'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => switchesDemo()))),

            //percentageProgress

            ListTile(
                title: const Text('percentageProgress'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => percentageProgress()))),

            //ExampleDragAndDrop
            ListTile(
                title: const Text('ExampleDragAndDrop'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ExampleDragAndDrop()))),

            //guesturedemo
            ListTile(
                title: const Text('Guesture Demo'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => guesturedemo()))),

            //pinchDemo
            ListTile(
                title: const Text('Pinch Demo'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PinchZoom(
                          child:
                              Image.network('https://placekitten.com/640/360'),
                        )))),
            //SelectListItem
            ListTile(
                title: const Text('SelectListItem'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SelectListItem()))),
            //selectMultipleItem
            ListTile(
                title: const Text('select Single Grid Item'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => selectMultipleItem()))),
            //selectGridMultiSelect
            ListTile(
                title: const Text('Select Multiple Grid Item'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => selectGridMultiSelect()))),
            //listGridAnimate
            ListTile(
                title: const Text('listGridAnimate'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => listGridAnimate()))),
            //statesMaterialDemo
            ListTile(
                title: const Text('States Material Demo'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => statesMaterialDemo()))),

            //shakyAnimate
            ListTile(
                title: const Text('Shaky Animate List View'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => shakyAnimate()))),
            //customDrawer
            ListTile(
                title: const Text('Custom Drawer'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => customDrawer()))),
            //animatedIconsDemo
            ListTile(
                title: const Text('AnimatedIconsDemo'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => animatedIconsDemo()))),

            //swipeableButton
            ListTile(
                title: const Text('swipeableButton'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => swipeableButton()))),
            //datePicker
            ListTile(
                title: const Text('datePicker'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => datePicker()))),

            //shapeButtons
            ListTile(
                title: const Text('shapeButtons'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => shapeButtons()))),
            //flipCartAnimate
            ListTile(
                title: const Text('FlipCartAnimate'),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => flipCartAnimate()))),
          ],
        ),
      ),
    );
  }
}

class LoadingListPage extends StatefulWidget {
  @override
  _LoadingListPageState createState() => _LoadingListPageState();
}

class _LoadingListPageState extends State<LoadingListPage> {
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading List'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                enabled: _enabled,
                child: ListView.builder(
                  itemBuilder: (_, __) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 48.0,
                          height: 48.0,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: 40.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  itemCount: 6,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _enabled = !_enabled;
                    });
                  },
                  child: Text(
                    _enabled ? 'Stop' : 'Play',
                    style: Theme.of(context).textTheme.button?.copyWith(
                        fontSize: 18.0,
                        color: _enabled ? Colors.redAccent : Colors.green),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class SlideToUnlockPage extends StatelessWidget {
  final List<String> days = <String>[
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final List<String> months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    final DateTime time = DateTime.now();
    final int hour = time.hour;
    final int minute = time.minute;
    final int day = time.weekday;
    final int month = time.month;
    final int dayInMonth = time.day;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slide To Unlock'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            'https://picsum.photos/250?image=9',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 48.0,
            right: 0.0,
            left: 0.0,
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    '${hour < 10 ? '0$hour' : '$hour'}:${minute < 10 ? '0$minute' : '$minute'}',
                    style: const TextStyle(
                      fontSize: 60.0,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                  ),
                  Text(
                    '${days[day - 1]}, ${months[month - 1]} $dayInMonth',
                    style: const TextStyle(fontSize: 24.0, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 24.0,
              left: 0.0,
              right: 0.0,
              child: Center(
                child: Opacity(
                  opacity: 0.8,
                  child: Shimmer.fromColors(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.network(
                          'https://picsum.photos/250?image=9',
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                        ),
                        const Text(
                          'Slide to unlock',
                          style: TextStyle(
                            fontSize: 28.0,
                          ),
                        )
                      ],
                    ),
                    baseColor: Colors.black12,
                    highlightColor: Colors.white,
                    loop: 3,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
