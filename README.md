# Icon Animator

Simple and highly configurable icon animation package with icon size, color, duration. It can display any widgets, too.

![Icon Animator](https://raw.githubusercontent.com/thruthesky/icon_animator/main/Icon%20Animator.gif)
## Options

- `IconAnimator` can be set with some default options.
- `icon` is the IconData. It can Material icon or any other icons.
- `child` is any widget that can be displayed instead of `icon`.
- If `finish` is set, then it will be displayed when the loop has finished. You may pass `SizedBox.shrink()` to hide the icon.
- `loop` is to set how many loops the `IconAnimator` repeats its children.
- `children` is the frame of animation. Each child is an `AnimationFrame` type with optional setup.
  - If `icon` is set on the animation, then `AnimationFrame` can have color property.
  - `duration` is the duration of each frame.
  - You can use in combination of icon and any widgets.
## Example code

```dart
IconAnimator(
    icon: Icons.favorite,
    finish: SizedBox.shrink(),
    loop: 3,
    children: [
      AnimationFrame(size: 0, duration: 100),
      AnimationFrame(size: 4, color: Colors.amber[100], duration: 100),
      AnimationFrame(size: 8, color: Colors.amber[200], duration: 100),
      AnimationFrame(size: 16, color: Colors.amber[300], duration: 100),
      AnimationFrame(size: 20, color: Colors.amber[400], duration: 150),
      AnimationFrame(size: 24, color: Colors.amber[500], duration: 200),
      AnimationFrame(size: 28, color: Colors.amber[600], duration: 250),
      AnimationFrame(size: 32, color: Colors.amber[700], duration: 300),
    ],
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
```
