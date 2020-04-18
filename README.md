# flutter_bounce

- An efficient flutter package for an **on-tap bounce** animation on any flutter widgets 
- This package is an enhanced version of [bouncing_widget](https://pub.dev/packages/bouncing_widget).
- **Limitation** of the above package: 
    - It is not efficient for the widgets in Scroll Paged. We cannot scroll while having our fingers on the widget
    - The same issue would be found [here](https://github.com/ThomasEcalle/bouncing_widget/issues/1)


## Advantages

- Flutter bounce package will give you full freedom, to be used in on both the **static** and **dynamic like scrolling pages**.
- Not sticky on scrolling, efficient bounce effect every where
- With **Duration**, controll the bounce animation

## Usage

To use this plugin, add `flutter_bounce` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages).

## Demo

1. Simple Bounce with varied Duration:

![](assets/simple-bounce.gif)

## Example

- Import the library

```dart
import 'package:flutter_bounce/flutter_bounce.dart';
```

- In order to use this package, we just need to wrap the content with the widget `Bounce`.
- `child`, `duration` and `onPressed` is mandatory in the widget. 
- However, `onPressed` and `duration` can have `null` in the widget. By default `duration` is set to `100 milliseconds`.
- **Please Note:** Always pass the duration in `milliseconds` for best result

```dart
Bounce(
  duration: Duration(milliseconds: 110),
  onPressed: (){ YOUR_FUNCTION },
  child: YOUR_WIDGET
)
```










