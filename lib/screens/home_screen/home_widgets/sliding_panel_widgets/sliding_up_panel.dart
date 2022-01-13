import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../../common/constants/sizes_constant.dart';
import '../../home_model/home_model.dart';

import 'sliding_up_inside.dart';

class SlideUpWidget extends GetView<HomeModel> {
  const SlideUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      controller: controller.bottomSlidingBarCont,
      maxHeight: Sizes.appbarMaxHeight,
      minHeight: 0,
      defaultPanelState: PanelState.CLOSED,
      color: Colors.white,
      backdropColor: Colors.transparent,
      slideDirection: SlideDirection.UP,
      panel: const SlideUpInside(),
    );
  }
}
