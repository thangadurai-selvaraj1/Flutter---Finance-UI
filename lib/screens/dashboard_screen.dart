import 'package:financeappui/screens/settings_screen.dart';
import 'package:flutter/material.dart';

import '../extentions/extentions_index.dart';
import '../models/model_index.dart';
import '../resourcs/recources_index.dart';
import '../utils/dummy_data.dart';
import '../widgets/widget_index.dart';
import 'card_screen.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.cBLACK,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashBoardAppBar(
                  onMenuClicked: () {},
                  onProfileClicked: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsScreen()))),
              addVerticalSpace(MyDimens.k20Dimens),
              const Text(
                Strings.DASHBOARD_YOUR_BALANCE,
                maxLines: 1,
                style: TextStyle(
                    fontSize: MyDimens.k25Dimens,
                    fontWeight: FontWeight.bold,
                    color: MyColors.cWHITE),
              ).paddingH(MyDimens.k10Dimens),
              addVerticalSpace(MyDimens.k10Dimens),
              BalanceCard(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CardScreen()))),
              addVerticalSpace(MyDimens.k20Dimens),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CardIconButton(icon: Icons.arrow_upward, color: Colors.red),
                  CardIconButton(
                      icon: Icons.arrow_downward, color: Colors.green),
                  CardIconButton(
                      icon: Icons.monetization_on_outlined,
                      color: Colors.yellow),
                  CardIconButton(
                      icon: Icons.cloud_done_outlined, color: Colors.blue),
                ],
              ),
              addVerticalSpace(MyDimens.k20Dimens),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        Strings.DASHBOARD_ACTIVITIES,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: MyDimens.k20Dimens,
                            fontWeight: FontWeight.bold,
                            color: MyColors.cWHITE),
                      ).paddingH(MyDimens.k10Dimens),
                      TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(MyDimens.k18Dimens),
                              )),
                              backgroundColor: MaterialStateProperty.all(
                                  MyColors.cBLACK_SHADOW),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(
                                      horizontal: MyDimens.k20Dimens))),
                          child: const Text(
                            Strings.DASHBOARD_THIS_WEEK,
                            style: TextStyle(
                                color: MyColors.cWHITE,
                                fontSize: MyDimens.k12Dimens),
                          ))
                    ],
                  ),
                  addVerticalSpace(MyDimens.k20Dimens),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        for (SliderModel i in getSliderModelDummyData())
                          SliderItem(
                              context: context,
                              date: i.date,
                              sliderValue: i.value)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ).padding(MyDimens.k15Dimens),
        ),
      ),
    );
  }
}
