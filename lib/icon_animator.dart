library icon_animator;

import 'dart:async';

import 'package:flutter/material.dart';

class IconAnimate {
  IconAnimate({
    this.size,
    this.color,
    @required this.duration,
    this.icon,
    this.child,
  });
  final double size;
  final Color color;
  final int duration;
  final IconData icon;
  final Widget child;
}

class IconAnimator extends StatefulWidget {
  IconAnimator({
    this.icon,
    this.finish,
    @required this.animates,
    this.loop,
    this.child,
  });
  final IconData icon;
  final Widget finish;
  final int loop;
  final List<IconAnimate> animates;
  final Widget child;
  @override
  _IconAnimatorState createState() => _IconAnimatorState();
}

class _IconAnimatorState extends State<IconAnimator> {
  int frameCount = 0;
  int loopCount = 0;
  IconAnimate animate;
  @override
  void initState() {
    super.initState();

    resizeLoop();
  }

  resizeLoop() {
    setState(() {
      animate = widget.animates[frameCount];
    });
    Timer(
      Duration(milliseconds: widget.animates[frameCount].duration),
      () {
        frameCount++;
        if (frameCount >= widget.animates.length) {
          if (widget.loop != null) {
            loopCount++;
            if (loopCount >= widget.loop) {
              // finished
              setState(() {});
              return;
            }
          }
          frameCount = 0;
        }
        resizeLoop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.loop != null && loopCount >= widget.loop) {
      if (widget.finish != null) {
        return widget.finish;
      }
    }
    Widget child;
    if (animate.child != null) {
      child = animate.child;
    } else if (widget.child != null) {
      child = widget.child;
    } else if (animate.icon != null) {
      child = Icon(animate.icon);
    } else if (widget.icon != null) {
      child = Icon(widget.icon);
    } else {
      child = SizedBox.shrink();
    }
    if (child is Icon) {
      return Icon(
        animate.icon != null ? animate.icon : widget.icon,
        size: animate.size,
        color: animate.color,
      );
    } else {
      return child;
    }
  }
}
