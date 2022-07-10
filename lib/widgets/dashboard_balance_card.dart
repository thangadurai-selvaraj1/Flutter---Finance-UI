import 'package:flutter/material.dart';

import '../extentions/extentions_index.dart';
import '../resourcs/recources_index.dart';

class BalanceCard extends StatelessWidget {
  final Function onPressed;
  const BalanceCard({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Card(
        shape: MyDimens.k30Dimens.toRectangleBorder(),
        color: MyColors.cBLACK_SHADOW,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: MyDimens.k25Dimens, vertical: MyDimens.k40Dimens),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Strings.DASHBOARD_TODAY,
                style: TextStyle(color: MyColors.cWHITE_60),
              ),
              addVerticalSpace(MyDimens.k5Dimens),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Text(
                      Strings.DASHBOARD_CARD_MONEY,
                      style: TextStyle(
                          fontSize: MyDimens.k35Dimens,
                          fontWeight: FontWeight.bold,
                          color: MyColors.cWHITE),
                    ),
                  ),
                  const Text(
                    Strings.DASHBOARD_PERCENTAGE_15,
                    textAlign: TextAlign.end,
                    style: TextStyle(color: MyColors.cWHITE_60),
                  ).padding(MyDimens.k10Dimens),
                  const Icon(
                    Icons.arrow_upward,
                    color: MyColors.cWHITE_60,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
