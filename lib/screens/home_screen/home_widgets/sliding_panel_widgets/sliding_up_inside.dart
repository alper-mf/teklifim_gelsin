import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teklifim_gelsin/screens/home_screen/home_model/home_model.dart';
import 'package:teklifim_gelsin/screens/home_screen/home_widgets/container/error_container.dart';
import 'package:teklifim_gelsin/screens/home_screen/home_widgets/container/offer_container.dart';

class SlideUpInside extends GetView<HomeModel> {
  const SlideUpInside({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.showContainer() ? OfferContainer() : ErrorContainer(),
      ),
    );
  }
}
