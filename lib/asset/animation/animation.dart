import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:online_learning/asset/animation/tween.dart';

Animation<Offset> animation({
  required AnimationController controller,
  required double firstInt,
  required double endInt,
}) {
  return tween.animate(CurvedAnimation(
    parent: controller,
    curve: Interval(firstInt, endInt, curve: Curves.easeInBack),
  ));
}
