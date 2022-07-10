import 'package:flutter/material.dart';

import '../extentions/extentions_index.dart';
import '../resourcs/recources_index.dart';
import '../utils/dummy_data.dart';
import '../widgets/widget_index.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  int _cardPosition = 0;
  var cardList = [1, 2, 3];
  var _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.cBLACK,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: MyColors.cWHITE,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: const [Icon(Icons.more_vert)],
        backgroundColor: MyColors.cBLACK,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        Strings.CARD_YOUR_CARDS,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: MyDimens.k25Dimens,
                            fontWeight: FontWeight.bold,
                            color: MyColors.cWHITE),
                      ).paddingH(MyDimens.k10Dimens),
                      addVerticalSpace(10.0),
                      const Text(
                        Strings.CARD_3_ACTIVE_CARDS,
                        style: TextStyle(
                            color: MyColors.cWHITE_60,
                            fontSize: MyDimens.k12Dimens),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: MyColors.cYELLOW,
                      child: const Icon(
                        Icons.add,
                        color: MyColors.cBLACK,
                      ),
                    ),
                  )
                ],
              ),
              addVerticalSpace(25.0),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: PageView.builder(
                    controller: _pageController,
                    physics: BouncingScrollPhysics(),
                    onPageChanged: (index) {
                      setState(() {
                        _cardPosition = index;
                      });
                    },
                    itemCount: cardList.length,
                    itemBuilder: (context, item) {
                      return DebitAndCreditCard(
                          cardLogo: MyImages.CARD_VISA_LOGO,
                          cardNumber: Strings.CARD_NUMBER,
                          cardHolderName: Strings.CARD_HOLDER_NAME,
                          expiryDate: Strings.CARD_DATE);
                    }),
              ),
              SizedBox(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        cardList.length,
                        (index) => Indicator(
                              isSelected: _cardPosition == index ? true : false,
                              onPressed: () {
                                setState(() {
                                  _cardPosition = index;
                                  _pageController.animateToPage(_cardPosition,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.bounceInOut);
                                });
                              },
                            ))
                  ],
                ),
              ),
              addVerticalSpace(25.0),
              const Text(
                Strings.CARD_RECENT_TRANSACTION,
                maxLines: 1,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: MyDimens.k20Dimens,
                    fontWeight: FontWeight.bold,
                    color: MyColors.cWHITE_60),
              ).paddingH(MyDimens.k10Dimens),
              addVerticalSpace(15.0),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: getTransactionModelDummyData().length,
                    itemBuilder: (context, index) {
                      var data = getTransactionModelDummyData();
                      return TransactionListCard(
                          logo: data[index].logo,
                          name: data[index].name,
                          date: data[index].date,
                          spendAmount: data[index].spendAmount);
                    }),
              )
            ],
          ).padding(MyDimens.k15Dimens),
        ),
      ),
    );
  }
}
