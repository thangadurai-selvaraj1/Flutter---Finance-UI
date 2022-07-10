import 'package:financeappui/extentions/extentions_index.dart';
import 'package:flutter/material.dart';

import '../resourcs/recources_index.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Function onClickAction;

  const MyButton(
      {Key? key, required this.buttonText, required this.onClickAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onClickAction();
      },
      color: MyColors.cPRIMARY,
      padding: MyDimens.k14Dimens.toEdgeInset(),
      elevation: MyDimens.k10Dimens,
      minWidth: double.infinity,
      shape: MyDimens.k12Dimens.toRectangleBorder(),
      child: Text(
        buttonText,
        style: const TextStyle(color: MyColors.cWHITE),
      ),
    );
  }
}
