import 'package:flutter/material.dart';
import 'package:teklifim_gelsin/common/constants/sizes_constant.dart';
import 'package:teklifim_gelsin/common/constants/text_styles.dart';

class CustomMainButton extends StatelessWidget {
  final Color color;
  final String title;
  final GestureTapCallback? onTap;
  const CustomMainButton({
    Key? key,
    required this.color,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: Sizes.kWidth / 1.5,
        ),
        child: Container(
          padding: const EdgeInsets.all(40),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(Sizes.circularRadius * .1)),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: ITextStyle.h2(Colors.white, true),
          ),
        ),
      ),
    );
  }
}
