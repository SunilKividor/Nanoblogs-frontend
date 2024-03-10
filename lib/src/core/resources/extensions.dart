
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
    MediaQueryData get mediaQueryData => MediaQuery.of(this);
  Size get size => MediaQuery.of(this).size;
  double get width => size.width;
  double get height => size.height;
  (double, double) get screenSize {
    final s = MediaQuery.of(this).size;
    return (s.width, s.height);
}
}