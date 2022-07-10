import 'package:flutter/material.dart';

import '../resourcs/recources_index.dart';

class Indicator extends StatelessWidget {
  final bool isSelected;
  final Function onPressed;
  const Indicator({Key? key, required this.isSelected, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        margin: EdgeInsets.all(1),
        width: isSelected ? 12 : 6,
        height: isSelected ? 10 : 6,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? MyColors.cPRIMARY : MyColors.cWHITE),
      ),
    );
  }
}
