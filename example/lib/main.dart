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
              'Icon Animator',
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
                    children: [
                      AnimationFrame(size: 0, duration: 100),
                      AnimationFrame(size: 4, color: Colors.red, duration: 100),
                      AnimationFrame(size: 8, duration: 100),
                      AnimationFrame(
                          size: 12, color: Colors.red, duration: 100),
                      AnimationFrame(size: 16, duration: 100),
                      AnimationFrame(
                          size: 20, color: Colors.blue, duration: 150),
                      AnimationFrame(
                          size: 24, color: Colors.blue, duration: 200),
                      AnimationFrame(
                          size: 28, color: Colors.blue, duration: 250),
                      AnimationFrame(
                          size: 32, color: Colors.blue, duration: 300),
                    ],
                  ),
                ),
                SizedBox(
                  width: 32,
                  height: 32,
                  child: IconAnimator(
                    icon: Icons.lens,
                    loop: 2,
                    children: [
                      AnimationFrame(size: 0, duration: 100),
                      AnimationFrame(
                          size: 4, color: Colors.green, duration: 100),
                      AnimationFrame(
                          size: 8, color: Colors.green, duration: 100),
                      AnimationFrame(
                          size: 16, color: Colors.green, duration: 100),
                      AnimationFrame(
                          size: 20, color: Colors.green, duration: 150),
                      AnimationFrame(
                          size: 24, color: Colors.green, duration: 200),
                      AnimationFrame(
                          size: 28, color: Colors.green, duration: 250),
                      AnimationFrame(
                          size: 32, color: Colors.green, duration: 300),
                    ],
                  ),
                ),
                SizedBox(
                  width: 32,
                  height: 32,
                  child: IconAnimator(
                    icon: Icons.favorite,
                    finish: SizedBox.shrink(),
                    loop: 3,
                    children: [
                      AnimationFrame(size: 0, duration: 100),
                      AnimationFrame(
                          size: 4, color: Colors.amber[100], duration: 100),
                      AnimationFrame(
                          size: 8, color: Colors.amber[200], duration: 100),
                      AnimationFrame(
                          size: 16, color: Colors.amber[300], duration: 100),
                      AnimationFrame(
                          size: 20, color: Colors.amber[400], duration: 150),
                      AnimationFrame(
                          size: 24, color: Colors.amber[500], duration: 200),
                      AnimationFrame(
                          size: 28, color: Colors.amber[600], duration: 250),
                      AnimationFrame(
                          size: 32, color: Colors.amber[700], duration: 300),
                    ],
                  ),
                ),
                SizedBox(
                  width: 32,
                  height: 32,
                  child: IconAnimator(
                    loop: 5,
                    finish: SizedBox.shrink(),
                    children: [
                      AnimationFrame(child: SizedBox.shrink(), duration: 1500),
                      AnimationFrame(
                          child: Container(
                            color: Colors.blue,
                            child: Center(
                              child: Text('X'),
                            ),
                          ),
                          duration: 300),
                      AnimationFrame(
                          icon: Icons.thumb_up,
                          color: Colors.blue,
                          duration: 500),
                      AnimationFrame(
                          child: Container(
                            color: Colors.red,
                            child: Center(
                              child: Text('O'),
                            ),
                          ),
                          duration: 300),
                    ],
                  ),
                ),
                IconAnimator(
                  icon: null,
                  children: [
                    AnimationFrame(
                        icon: Icons.volume_mute, size: 24, duration: 100),
                    AnimationFrame(
                        icon: Icons.volume_down, size: 24, duration: 100),
                    AnimationFrame(
                        icon: Icons.volume_up, size: 24, duration: 100)
                  ],
                ),
                IconAnimator(
                  icon: null,
                  children: [
                    AnimationFrame(
                        icon: Icons.notifications, size: 24, duration: 100),
                    AnimationFrame(
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
                children: [
                  AnimationFrame(size: 0, duration: 100),
                  AnimationFrame(
                      size: 4, color: Colors.grey[100], duration: 100),
                  AnimationFrame(
                      size: 8, color: Colors.grey[200], duration: 100),
                  AnimationFrame(
                      size: 16, color: Colors.grey[300], duration: 100),
                  AnimationFrame(
                      size: 20, color: Colors.grey[400], duration: 150),
                  AnimationFrame(
                      size: 24, color: Colors.grey[500], duration: 200),
                  AnimationFrame(
                      size: 28, color: Colors.grey[600], duration: 250),
                  AnimationFrame(
                      size: 32, color: Colors.grey[700], duration: 300),
                  AnimationFrame(
                      size: 38, color: Colors.grey[800], duration: 300),
                  AnimationFrame(
                      size: 56, color: Colors.grey[900], duration: 300),
                  AnimationFrame(
                      size: 82, color: Colors.grey[900], duration: 300),
                  AnimationFrame(
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
