library icon_animator;

import 'dart:async';

import 'package:flutter/material.dart';

class IconAnimate {
  IconAnimate(
      {@required this.size, this.color, @required this.duration, this.icon});
  final double size;
  final Color color;
  final int duration;
  final IconData icon;
}

class IconAnimator extends StatefulWidget {
  IconAnimator({@required this.icon, @required this.resizes, this.loop});
  final IconData icon;
  final int loop;
  final List<IconAnimate> resizes;
  @override
  _IconAnimatorState createState() => _IconAnimatorState();
}

class _IconAnimatorState extends State<IconAnimator> {
  int frameCount = 0;
  int loopCount = 0;
  IconAnimate resize;
  @override
  void initState() {
    super.initState();

    resizeLoop();
  }

  resizeLoop() {
    setState(() {
      resize = widget.resizes[frameCount];
    });
    Timer(
      Duration(milliseconds: widget.resizes[frameCount].duration),
      () {
        frameCount++;
        if (frameCount >= widget.resizes.length) {
          if (widget.loop != null) {
            loopCount++;
            if (loopCount >= widget.loop) return;
          }
          frameCount = 0;
        }
        resizeLoop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      resize.icon != null ? resize.icon : widget.icon,
      size: resize.size,
      color: resize.color,
    );
  }
}
