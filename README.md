# Icon Animator

Simple and highly configurable icon animation package with icon size, color, duration. It can display any widgets, too.

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

![Icon Animator](https://raw.githubusercontent.com/thruthesky/icon_animator/main/Icon%20Animator.gif)

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

- A little complicated nested icon animator sample


![Icon Animator 2](https://raw.githubusercontent.com/thruthesky/icon_animator/main/icon_animator_2.gif)

```dart
Positioned(
  child: Center(
    child: IconAnimator(
      loop: 1,
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Color(0xcc444444),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                color: Color(0x88555555),
                spreadRadius: 5,
                offset: Offset(1.0, 1.0),
              )
            ]),
        child: Column(
          children: [
            SizedBox(
              width: 84,
              height: 64,
              child: IconAnimator(
                loop: 2,
                children: [
                  AnimationFrame(
                    duration: 250,
                    child: Align(
                      child: SvgIcon(leftSwipe,
                          color: Colors.white, width: 64),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  AnimationFrame(
                    duration: 250,
                    child: Align(
                      child: SvgIcon(leftSwipe,
                          color: Colors.white, width: 64),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Text(
              '다음 사진을 보시려면,\n왼쪽으로 밀어주세요.',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      finish: SizedBox.shrink(),
      children: [
        AnimationFrame(duration: 1000, child: SizedBox.shrink()),
        AnimationFrame(duration: 5000),
      ],
    ),
  ),
  top: 180,
  left: 0,
  right: 0,
),
```
