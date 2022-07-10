import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  Widget padding([var value = 0.0]) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Widget paddingLeft([var value = 0.0]) => Padding(
        padding: EdgeInsets.only(left: value),
        child: this,
      );

  Widget paddingRight([var value = 0.0]) => Padding(
        padding: EdgeInsets.only(right: value),
        child: this,
      );

  Widget paddingH([var value = 0.0]) => Padding(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: value),
        child: this,
      );

  Widget toCenter() => Center(
        child: this,
      );
}
