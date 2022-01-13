import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/constants/sizes_constant.dart';
import '../../../../common/constants/text_styles.dart';
import '../../../../presentation/utility/palette.dart';
import '../../home_model/home_model.dart';

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
          flex: 1,
          child: TextFieldWithSlider(
            textEditingController: controller.loanTextController,
            min: 1000,
            max: 100000,
            division: 99,
            withText: false,
            rxValue: controller.loan,
            setValue: controller.setLoan,
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
          flex: 1,
          child: TextFieldWithSlider(
            textEditingController: controller.mounthTextController,
            min: 3,
            max: 36,
            withText: true,
            division: 33,
            rxValue: controller.expiry,
            setValue: controller.setExpiry,
          ),
        ),
      ],
    );
  }
}
