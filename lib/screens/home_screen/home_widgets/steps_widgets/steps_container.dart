import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../../common/constants/assets_constant.dart';
import '../../../../common/constants/sizes_constant.dart';
import '../../../../common/constants/text_styles.dart';
import '../../../../presentation/utility/palette.dart';
import '../../home_model/home_model.dart';
import 'step_card.dart';

class StepsContainer extends GetView<HomeModel> {
  const StepsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: InkWell(
          onTap: () => tapMain(controller),
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              controller.stepsListTileModel.length.toString() +
                                  ' adımda\nihtiyaç kredinizi',
                          style: ITextStyle.h1(Palette.textBoldColor, true),
                        ),
                        TextSpan(
                          text: ' hesaplayın',
                          style: ITextStyle.h1(Palette.textBoldColor, false),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: Sizes.kPaddingH,
              ),
              Flexible(
                flex: 3,
                child: ListView(
                  children: controller.stepsListTileModel
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: StepCard(
                              index: e.itemID,
                              title: e.title,
                              subTitle: e.subTitle,
                            ),
                          ))
                      .toList(),
                ),
              ),
              SizedBox(
                height: Sizes.kPaddingH * 2,
              ),
              Text(
                'Teklif almak için ekrana dokunmanız yeterli',
                textAlign: TextAlign.center,
                style: ITextStyle.h2(
                  Palette.textBoldColor,
                  true,
                ),
              ),
              LottieBuilder.asset(
                AssetsConstant.tapAnimation,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

tapMain(HomeModel controller) {
  if (controller.bottomSlidingBarCont.isPanelClosed) {
    controller.bottomSlidingBarCont.open();
  } else {
    controller.bottomSlidingBarCont.close();
  }
}
