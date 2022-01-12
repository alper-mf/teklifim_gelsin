import 'package:flutter/material.dart';
import 'package:teklifim_gelsin/common/constants/sizes_constant.dart';
import 'package:teklifim_gelsin/common/constants/text_styles.dart';
import 'package:teklifim_gelsin/presentation/utility/palette.dart';

class StepCard extends StatelessWidget {
  final int index;
  final String title;
  final String subTitle;
  const StepCard(
      {Key? key,
      required this.index,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: Sizes.circularRadius,
        width: Sizes.circularRadius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 5, color: Palette.circularColor),
        ),
        child: Center(
            child: Text(
          index.toString(),
          style: ITextStyle.h1(Palette.textBoldColor, true),
        )),
      ),
      title: Text(
        title,
        style: ITextStyle.subHead(Palette.textBoldColor, true),
      ),
      subtitle: Text(
        subTitle,
        style: ITextStyle.subTitle(Palette.textBoldColor, false),
      ),
    );
  }
}
