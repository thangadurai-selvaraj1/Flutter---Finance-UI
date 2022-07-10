import 'package:flutter/material.dart';

import '../extentions/extentions_index.dart';
import '../resourcs/recources_index.dart';

class DashBoardAppBar extends StatelessWidget with PreferredSizeWidget {
  final Function onMenuClicked;
  final Function onProfileClicked;

  const DashBoardAppBar({
    Key? key,
    required this.onMenuClicked,
    required this.onProfileClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            onMenuClicked();
          },
          borderRadius: MyDimens.k10Dimens.toBorderRadius(),
          child: const Icon(
            Icons.menu_open,
            color: MyColors.cWHITE,
          ),
        ),
        InkWell(
          onTap: () {
            onProfileClicked();
          },
          borderRadius: MyDimens.k15Dimens.toBorderRadius(),
          child: const SizedBox(
            width: MyDimens.k30Dimens,
            height: MyDimens.k30Dimens,
            child: CircleAvatar(
              backgroundImage: ExactAssetImage(MyImages.CIRCLE_PERSON),
              backgroundColor: MyColors.cGREY,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
