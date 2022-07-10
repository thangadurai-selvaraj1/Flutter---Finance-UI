import 'package:flutter/material.dart';

import '../resourcs/recources_index.dart';

class SliderItem extends StatelessWidget {
  final BuildContext context;
  final String date;
  final double sliderValue;

  const SliderItem(
      {Key? key,
      required this.context,
      required this.date,
      required this.sliderValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          date,
          style: const TextStyle(
              color: MyColors.cWHITE, fontSize: MyDimens.k12Dimens),
        ),
        SizedBox(
          height: (MediaQuery.of(context).size.height / 2) - 50,
          child: RotatedBox(
            quarterTurns: 3,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 4,
                thumbColor: Colors.transparent,
                thumbShape: SliderComponentShape.noThumb,
              ),
              child: Slider(
                min: 0.0,
                thumbColor: MyColors.cPRIMARY,
                inactiveColor: MyColors.cBLACK_SHADOW,
                activeColor: MyColors.cPRIMARY,
                max: 100.0,
                value: sliderValue,
                onChanged: (value) {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
