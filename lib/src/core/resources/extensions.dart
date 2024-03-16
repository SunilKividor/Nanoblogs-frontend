
import 'package:flutter/material.dart';
import 'package:nanoblogs/src/core/utils/enums.dart';

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

extension ButtonSizeExtension on ButtonSize {
  double get height => switch(this) {
    ButtonSize.small => 40,
    ButtonSize.medium => 48,
    ButtonSize.large => 56,
  };
}