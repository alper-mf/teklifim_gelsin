import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/constants/sizes_constant.dart';
import '../../../common/constants/text_styles.dart';
import '../../../presentation/utility/palette.dart';
import '../../home_screen/home_model/home_model.dart';

class LoanScreenAppBar extends GetView<HomeModel>
    implements PreferredSizeWidget {
  final double height;

  const LoanScreenAppBar({Key? key, this.height = kToolbarHeight})
      : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height * 2,
      width: Sizes.kWidth,
      child: AppBar(
        leading: IconButton(
          onPressed: () {
            controller.bottomSlidingBarCont.open();
            controller.setShowOffers(false);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Palette.detayTextColor.withOpacity(0.6),
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Palette.detayButtonColor.withOpacity(0.3),
        centerTitle: true,
        title: Text(
          'Hesaplama Kriterleri',
          style: ITextStyle.h2(
            Palette.detayTextColor.withOpacity(0.6),
            true,
          ),
        ),
      ),
    );
  }
}
