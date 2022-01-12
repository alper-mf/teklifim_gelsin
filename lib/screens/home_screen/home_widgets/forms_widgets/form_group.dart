import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teklifim_gelsin/common/constants/sizes_constant.dart';
import 'package:teklifim_gelsin/common/constants/text_styles.dart';
import 'package:teklifim_gelsin/presentation/utility/palette.dart';
import 'package:teklifim_gelsin/screens/home_screen/home_model/home_model.dart';

import 'textfield_with_slider.dart';

class FormGroup extends GetView<HomeModel> {
  const FormGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kredi tutarı',
          textAlign: TextAlign.start,
          style: ITextStyle.subHead(Palette.textBoldColor, false),
        ),
        Flexible(
          flex: 2,
          child: TextFieldWithSlider(
            textEditingController: controller.loanTextController,
            min: 1000,
            max: 100000,
            division: 99,
            withText: false,
            rxValue: controller.loanDouble,
            setValue: controller.setLoanDouble,
            prefix: const Text('₺'),
          ),
        ),
        SizedBox(height: Sizes.kPaddingH),
        Text(
          'Vade Süresi',
          textAlign: TextAlign.start,
          style: ITextStyle.subHead(Palette.textBoldColor, false),
        ),
        Flexible(
          flex: 2,
          child: TextFieldWithSlider(
            textEditingController: controller.mounthTextController,
            min: 3,
            max: 36,
            withText: true,
            division: 33,
            rxValue: controller.mounthDouble,
            setValue: controller.setMounth,
          ),
        ),
      ],
    );
  }
}
