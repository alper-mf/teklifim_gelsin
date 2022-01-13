import 'package:flutter/material.dart';
import '../../../common/constants/sizes_constant.dart';
import '../../../common/constants/text_styles.dart';

class DetailedButton extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final String text;
  final GestureTapCallback? onTap;
  const DetailedButton({
    Key? key,
    required this.buttonColor,
    required this.textColor,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: Sizes.kWidth / 3,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(Sizes.circularRadius / 6),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: ITextStyle.reviewTitle(textColor),
          ),
        ),
      ),
    );
  }
}
