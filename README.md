# LED Bulb Indicator

A simple widget to indicate a status by using an LED kind of style.

## Features

Four status types are supported: green, yellow, red, off.

## Getting started

In the pubspec.yaml of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  led_bulb_indicator: ^0.0.1
```

and import it:

```dart
import 'package:led_bulb_indicator/led_bulb_indicator.dart';
```

## Usage

```dart
LedBulbIndicator(
  initialState: LedBulbColors.red,
  glow: true,
  size: 50,
)
```

## Additional information

First release.
