import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/constants/sizes_constant.dart';
import '../../../../common/constants/text_styles.dart';
import '../../../../common/enum/fetch_enum.dart';
import '../../../../common/service/network_service.dart';
import '../../../../presentation/utility/palette.dart';
import '../../../detailed_loan_screen/detailed_loan_model/detailed_loan_model.dart';
import '../../home_model/home_model.dart';
import '../forms_widgets/custom_main_button.dart';
import '../forms_widgets/form_group.dart';

class OfferContainer extends NetWorkService {
  OfferContainer({
    Key? key,
  }) : super(key: key);

  final DetailedLoanModel _detailedLoanModel = Get.put(DetailedLoanModel());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeModel>(
      builder: (controller) => Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(height: Sizes.kPaddingH),
            Text(
              'Kredi Hesaplama',
              style: ITextStyle.h2(Palette.textBoldColor, false),
            ),
            SizedBox(height: Sizes.kPaddingH),
            const Flexible(
              flex: 2,
              child: FormGroup(),
            ),
            SizedBox(height: Sizes.kPaddingH / 2),
            Obx(
              () => Text(
                '₺${controller.loan().round()} ${controller.expiry().round()} Ay Vadeli',
                style: ITextStyle.subHead(Palette.sliderActiveColor, true),
              ),
            ),
            SizedBox(height: Sizes.kPaddingH / 2),
            Flexible(
              flex: 2,
              child: CustomMainButton(
                onTap: () {
                  //Loan; String to int
                  int loan = int.parse(controller.loanTextController.text);

                  //Term Time; String to int
                  String notFixedTermTime = (controller
                      .mounthTextController.text
                      .replaceAll(RegExp(r'[A-z]+'), ''));
                  int termTime = int.parse(notFixedTermTime);

                  if (loan > 50000 && termTime > 24) {
                    controller.setShowContainer(false);
                  } else {
                    //Fetch Offers List Than Remote
                    fetchOffers(
                      loan.toString(),
                      termTime,
                      ResponseCount.partlyResponse,
                    ).then((value) {
                      if (_detailedLoanModel.offersList.isNotEmpty) {
                        controller.bottomSlidingBarCont.close();
                        controller.setShowOffers(true);
                      }
                    });
                  }
                },
                color: Palette.sliderActiveColor,
                title: 'Teklifim Gelsin',
              ),
            )
          ],
        ),
      ),
    );
  }
}
