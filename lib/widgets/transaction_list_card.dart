import 'package:flutter/material.dart';

import '../extentions/extentions_index.dart';
import '../resourcs/recources_index.dart';

class TransactionListCard extends StatelessWidget {
  final String logo;
  final String name;
  final String date;
  final String spendAmount;

  const TransactionListCard(
      {Key? key,
      required this.logo,
      required this.name,
      required this.date,
      required this.spendAmount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: MyDimens.k25Dimens.toRectangleBorder(),
      color: MyColors.cBLACK_SHADOW,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: MyDimens.k20Dimens, vertical: MyDimens.k20Dimens),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              logo,
              width: 35,
              height: 35,
              color: MyColors.cWHITE,
            ).paddingRight(20.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    style: const TextStyle(
                        color: MyColors.cWHITE,
                        fontSize: MyDimens.k12Dimens,
                        fontWeight: FontWeight.bold),
                  ),
                  addVerticalSpace(MyDimens.k2Dimens),
                  Text(
                    date,
                    maxLines: 1,
                    style: const TextStyle(
                        color: MyColors.cWHITE, fontSize: MyDimens.k12Dimens),
                  ),
                  addVerticalSpace(MyDimens.k5Dimens),
                ],
              ),
            ),
            Text(
              "+\$$spendAmount",
              maxLines: 1,
              style: const TextStyle(
                  color: MyColors.cWHITE, fontSize: MyDimens.k12Dimens),
            ),
          ],
        ),
      ),
    );
  }
}
