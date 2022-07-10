import 'package:flutter/material.dart';

extension BorderRadiusExt on num {
  RoundedRectangleBorder toRectangleBorder() {
    return RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(toDouble())));
  }

  BorderRadius toBorderRadius() {
    return BorderRadius.all(Radius.circular(toDouble()));
  }
}
