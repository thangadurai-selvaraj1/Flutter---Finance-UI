import 'package:flutter/material.dart';

import '../extentions/extentions_index.dart';
import '../resourcs/recources_index.dart';

class DebitAndCreditCard extends StatelessWidget {
  final String cardLogo;
  final String cardNumber;
  final String cardHolderName;
  final String expiryDate;

  const DebitAndCreditCard(
      {Key? key,
      required this.cardLogo,
      required this.cardNumber,
      required this.cardHolderName,
      required this.expiryDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: MyDimens.k30Dimens.toRectangleBorder(),
      color: MyColors.cPRIMARY,
      child: Container(
        padding: const EdgeInsets.all(MyDimens.k20Dimens),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              MyImages.CARD_CHIP,
              width: MyDimens.k50Dimens,
              height: MyDimens.k40Dimens,
            ),
            addVerticalSpace(MyDimens.k8Dimens),
            Text(
              cardNumber,
              maxLines: 1,
              style: const TextStyle(
                  fontSize: MyDimens.k25Dimens,
                  fontWeight: FontWeight.bold,
                  color: MyColors.cWHITE),
            ),
            addVerticalSpace(MyDimens.k8Dimens),
            Text(
              cardHolderName,
              maxLines: 1,
              style: const TextStyle(
                  color: MyColors.cWHITE,
                  fontSize: MyDimens.k14Dimens,
                  fontWeight: FontWeight.bold),
            ),
            addVerticalSpace(MyDimens.k8Dimens),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      Strings.CARD_EXPIRY_DATE,
                      maxLines: 1,
                      style: TextStyle(
                          color: MyColors.cWHITE, fontSize: MyDimens.k12Dimens),
                    ),
                    addVerticalSpace(MyDimens.k5Dimens),
                    Text(
                      expiryDate,
                      maxLines: 1,
                      style: const TextStyle(
                          color: MyColors.cWHITE,
                          fontSize: MyDimens.k12Dimens,
                          fontWeight: FontWeight.bold),
                    ),
                    addVerticalSpace(MyDimens.k5Dimens),
                  ],
                ),
                Image.asset(
                  cardLogo,
                  width: MyDimens.k50Dimens,
                  height: MyDimens.k60Dimens,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
