import 'package:flutter/material.dart';
import 'package:icon_animator/icon_animator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Icon Resizers',
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 32,
                  height: 32,
                  child: IconAnimator(
                    icon: Icons.radio_button_unchecked,
                    loop: 1,
                    resizes: [
                      IconAnimate(size: 0, duration: 100),
                      IconAnimate(size: 4, color: Colors.red, duration: 100),
                      IconAnimate(size: 8, duration: 100),
                      IconAnimate(size: 12, color: Colors.red, duration: 100),
                      IconAnimate(size: 16, duration: 100),
                      IconAnimate(size: 20, color: Colors.blue, duration: 150),
                      IconAnimate(size: 24, color: Colors.blue, duration: 200),
                      IconAnimate(size: 28, color: Colors.blue, duration: 250),
                      IconAnimate(size: 32, color: Colors.blue, duration: 300),
                    ],
                  ),
                ),
                SizedBox(
                  width: 32,
                  height: 32,
                  child: IconAnimator(
                    icon: Icons.lens,
                    loop: 2,
                    resizes: [
                      IconAnimate(size: 0, duration: 100),
                      IconAnimate(size: 4, color: Colors.green, duration: 100),
                      IconAnimate(size: 8, color: Colors.green, duration: 100),
                      IconAnimate(size: 16, color: Colors.green, duration: 100),
                      IconAnimate(size: 20, color: Colors.green, duration: 150),
                      IconAnimate(size: 24, color: Colors.green, duration: 200),
                      IconAnimate(size: 28, color: Colors.green, duration: 250),
                      IconAnimate(size: 32, color: Colors.green, duration: 300),
                    ],
                  ),
                ),
                SizedBox(
                  width: 32,
                  height: 32,
                  child: IconAnimator(
                    icon: Icons.favorite,
                    loop: 3,
                    resizes: [
                      IconAnimate(size: 0, duration: 100),
                      IconAnimate(
                          size: 4, color: Colors.amber[100], duration: 100),
                      IconAnimate(
                          size: 8, color: Colors.amber[200], duration: 100),
                      IconAnimate(
                          size: 16, color: Colors.amber[300], duration: 100),
                      IconAnimate(
                          size: 20, color: Colors.amber[400], duration: 150),
                      IconAnimate(
                          size: 24, color: Colors.amber[500], duration: 200),
                      IconAnimate(
                          size: 28, color: Colors.amber[600], duration: 250),
                      IconAnimate(
                          size: 32, color: Colors.amber[700], duration: 300),
                    ],
                  ),
                ),
                IconAnimator(
                  icon: null,
                  resizes: [
                    IconAnimate(
                        icon: Icons.volume_mute, size: 24, duration: 100),
                    IconAnimate(
                        icon: Icons.volume_down, size: 24, duration: 100),
                    IconAnimate(icon: Icons.volume_up, size: 24, duration: 100)
                  ],
                ),
                IconAnimator(
                  icon: null,
                  resizes: [
                    IconAnimate(
                        icon: Icons.notifications, size: 24, duration: 100),
                    IconAnimate(
                        icon: Icons.notifications_active,
                        size: 24,
                        duration: 100),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 128,
              height: 128,
              child: IconAnimator(
                icon: Icons.gps_fixed,
                resizes: [
                  IconAnimate(size: 0, duration: 100),
                  IconAnimate(size: 4, color: Colors.grey[100], duration: 100),
                  IconAnimate(size: 8, color: Colors.grey[200], duration: 100),
                  IconAnimate(size: 16, color: Colors.grey[300], duration: 100),
                  IconAnimate(size: 20, color: Colors.grey[400], duration: 150),
                  IconAnimate(size: 24, color: Colors.grey[500], duration: 200),
                  IconAnimate(size: 28, color: Colors.grey[600], duration: 250),
                  IconAnimate(size: 32, color: Colors.grey[700], duration: 300),
                  IconAnimate(size: 38, color: Colors.grey[800], duration: 300),
                  IconAnimate(size: 56, color: Colors.grey[900], duration: 300),
                  IconAnimate(size: 82, color: Colors.grey[900], duration: 300),
                  IconAnimate(
                      size: 128, color: Colors.grey[900], duration: 300),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
