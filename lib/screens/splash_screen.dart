import 'package:flutter/material.dart';

import '../extentions/extentions_index.dart';
import '../resourcs/recources_index.dart';
import '../widgets/widget_index.dart';
import 'dashboard_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text(
              Strings.SPLASH_WELCOME,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                  fontSize: MyDimens.k24Dimens,
                  fontWeight: FontWeight.bold,
                  color: MyColors.cWHITE),
            ),
            addVerticalSpace(MyDimens.k15Dimens),
            const Text(
              Strings.SPLASH_FINANCE_TXT,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                  fontSize: MyDimens.k14Dimens, color: MyColors.cWHITE),
            ),
            addVerticalSpace(MyDimens.k15Dimens),
            const Spacer(),
            MyButton(
                buttonText: Strings.SPLASH_LOGIN,
                onClickAction: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashBoardScreen()));
                }).paddingH(MyDimens.k30Dimens),
            addVerticalSpace(MyDimens.k15Dimens),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  Strings.SPLASH_DONT_HAVE_ACCOUNT,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: MyDimens.k14Dimens, color: MyColors.cWHITE),
                ),
                Text(
                  Strings.SPLASH_SIGN_UP,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: MyDimens.k14Dimens,
                      fontWeight: FontWeight.bold,
                      color: MyColors.cWHITE),
                ),
              ],
            ),
            addVerticalSpace(MyDimens.k15Dimens),
          ],
        ),
      ),
    );
  }
}
