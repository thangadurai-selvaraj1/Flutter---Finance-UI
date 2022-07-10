import 'package:flutter/material.dart';

extension Number on num {
  EdgeInsets toEdgeInset() {
    return EdgeInsets.all(toDouble());
  }
}
