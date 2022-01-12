import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teklifim_gelsin/common/constants/sizes_constant.dart';
import 'package:teklifim_gelsin/presentation/utility/palette.dart';
import 'package:teklifim_gelsin/screens/detailed_loan_screen/detailed_loan_screen.dart';
import 'package:teklifim_gelsin/screens/home_screen/home_model/home_model.dart';
import 'package:teklifim_gelsin/screens/home_screen/home_widgets/sliding_panel_widgets/sliding_up_panel.dart';
import 'home_widgets/steps_widgets/steps_container.dart';

class HomeScreen extends GetView<HomeModel> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Sizes.kHeight,
        width: Sizes.kWidth,
        color: Palette.primaryColor,
        child: Stack(
          children: <Widget>[
            Obx(() => controller.showOffers()
                ? const DetailedLoanScreen()
                : const StepsContainer()),
            const SlideUpWidget(),
          ],
        ),
      ),
    );
  }
}
