# Icon Animator

Simple and highly configurable icon animation package with icon size, color, duration.


## Example code

```dart
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
```
