import 'package:get/get.dart';

class Sizes {
  //Height And Sizes
  static double kHeight = Get.height;
  static double kWidth = Get.width;
  static double appbarMaxHeight = Sizes.kHeight * .65;
  static double appbarMinHeight = Get.height * .11;

  //Paddings
  static double kPaddingH = Get.height * .02;
  static double kPaddingW = Get.width * .02;

  //Radius
  static double appbarRadius = appbarMaxHeight * .2;
  static double circularRadius = 72;
  static double detailedCardRadius = 14;
}
