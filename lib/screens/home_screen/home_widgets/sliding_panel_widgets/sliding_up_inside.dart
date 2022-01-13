import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home_model/home_model.dart';
import '../container/error_container.dart';
import '../container/offer_container.dart';

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
