import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/constants/sizes_constant.dart';
import '../../../../common/constants/text_styles.dart';
import '../../../../common/enum/fetch_enum.dart';
import '../../../../common/service/network_service.dart';
import '../../../../presentation/utility/palette.dart';
import '../../home_model/home_model.dart';
import '../forms_widgets/custom_main_button.dart';

class ErrorContainer extends NetWorkService {
  ErrorContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeModel>(
      builder: (controller) => Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(
                'Teklif Bulunamadı',
                style: ITextStyle.h2(Palette.sliderActiveColor, true),
              ),
              SizedBox(
                height: Sizes.kPaddingH,
              ),
              Text(
                'Bankacılık Düzenleme ve Denetleme Kurumu(BDDK), 04.09.2020 tarihli kurul kararı ile 50.000 TL üzeri tüketici kredilerinde vade sınırını 36 aydan 24 aya indirmiştir. Lütfen aramanızı güncelleyin ya da 24 ay olarak devam edin.',
                style: ITextStyle.subHead(Palette.textBoldColor, false),
              ),
              SizedBox(
                height: Sizes.kPaddingH * 1.5,
              ),
              Text(
                '₺${controller.loanTextController.text} 24 Ay Vadeli Olarak',
                style: ITextStyle.subHead(Palette.sliderActiveColor, true),
              ),
              SizedBox(height: Sizes.kPaddingH / 2),
              CustomMainButton(
                color: Palette.sliderActiveColor,
                title: 'Devam Et',
                onTap: () {
                  fetchOffers(
                    controller.loanTextController.text,
                    ResponseCount.maxMounth,
                    ResponseCount.partlyResponse,
                  ).then((value) {
                    controller.setExpiry(ResponseCount.maxMounth.toDouble());
                    controller.bottomSlidingBarCont.close();
                    controller.setShowContainer(true);
                    controller.setShowOffers(true);
                  });
                },
              ),
              SizedBox(
                height: Sizes.kPaddingH,
              ),
              CustomMainButton(
                onTap: () {
                  controller.setShowContainer(true);
                },
                color: Palette.scaffold,
                title: 'Geri',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
