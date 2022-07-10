import 'package:flutter/material.dart';

import '../resourcs/recources_index.dart';

class SettingItems extends StatelessWidget {
  final String imageName;
  final String text;

  const SettingItems({Key? key, required this.imageName, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imageName,
        color: MyColors.cWHITE,
        height: 30,
        width: 30,
      ),
      title: Text(text, style: const TextStyle(fontSize: MyDimens.k12Dimens)),
      iconColor: MyColors.cWHITE,
      textColor: MyColors.cWHITE,
    );
  }
}
