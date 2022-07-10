import 'package:flutter/material.dart';

import '../resourcs/recources_index.dart';

class CardIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;

  const CardIconButton({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(MyDimens.k10Dimens),
        width: MyDimens.k50Dimens,
        height: MyDimens.k50Dimens,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MyDimens.k18Dimens),
          color: MyColors.cBLACK_SHADOW,
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
          ),
        ),
      ),
    );
  }
}
