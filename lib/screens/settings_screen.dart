import 'package:flutter/material.dart';

import '../extentions/extentions_index.dart';
import '../resourcs/recources_index.dart';
import '../utils/dummy_data.dart';
import '../widgets/widget_index.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.cBLACK,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: MyColors.cBLACK,
          elevation: 0.0,
          actions: [
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: MyColors.cBLACK_SHADOW,
              ),
              child: IconButton(
                icon: const Icon(Icons.close, size: 20.0),
                iconSize: 30.0,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundColor: MyColors.cBLACK_SHADOW,
                  child: Image.asset(MyImages.CIRCLE_PERSON),
                )),
            addVerticalSpace(MyDimens.k10Dimens),
            const Text(
              Strings.SETTINGS_USER_NAME,
              maxLines: 1,
              style: TextStyle(
                  fontSize: MyDimens.k20Dimens,
                  fontWeight: FontWeight.bold,
                  color: MyColors.cWHITE),
            ),
            addVerticalSpace(MyDimens.k5Dimens),
            const Text(
              Strings.SETTINGS_DESTINATION,
              maxLines: 1,
              style: TextStyle(
                  fontSize: MyDimens.k15Dimens, color: MyColors.cWHITE),
            ),
            addVerticalSpace(MyDimens.k20Dimens),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: getSettingsModelDummyData().length,
                  itemBuilder: (context, index) {
                    return SettingItems(
                        imageName: getSettingsModelDummyData()[index].imageName,
                        text: getSettingsModelDummyData()[index].text);
                  }),
            )
          ],
        ).padding(MyDimens.k20Dimens),
      ),
    );
  }
}
