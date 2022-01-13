import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/constants/sizes_constant.dart';
import '../../../../presentation/utility/palette.dart';

class TextFieldWithSlider extends StatelessWidget {
  final TextEditingController textEditingController;
  final RxDouble rxValue;
  final dynamic setValue;
  final int division;
  final double min;
  final double max;
  bool withText = false;
  final Widget? prefix;

  TextFieldWithSlider(
      {Key? key,
      required this.textEditingController,
      required this.rxValue,
      required this.setValue,
      this.prefix,
      required this.withText,
      required this.division,
      required this.max,
      required this.min})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: Sizes.kWidth / 1.5,
        ),
        child: Obx(
          () => Column(
            children: [
              TextField(
                controller: textEditingController,
                autocorrect: false,
                autofocus: true,
                decoration: InputDecoration(
                  prefix: prefix,
                  filled: true,
                  suffixIcon: Icon(
                    Icons.mode_edit_outline_outlined,
                    color: Palette.sliderActiveColor,
                  ),
                  suffixIconColor: Palette.sliderActiveColor,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
              Expanded(
                child: Slider.adaptive(
                  divisions: division,
                  min: min,
                  max: max,
                  thumbColor: Palette.sliderThumbColor,
                  activeColor: Palette.sliderActiveColor,
                  inactiveColor: Colors.transparent,
                  // ignore: unnecessary_null_comparison, prefer_if_null_operators
                  value: rxValue() == null ? min : rxValue(),
                  label: rxValue().round().toString(),
                  onChanged: (newValue) {
                    setValue(newValue.roundToDouble());
                    textEditingController.text = withText
                        ? newValue.toDouble().round().toStringAsFixed(0) + ' Ay'
                        : newValue.toDouble().round().toStringAsFixed(0);
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
