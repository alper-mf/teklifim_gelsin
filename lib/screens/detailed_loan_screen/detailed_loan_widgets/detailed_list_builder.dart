import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/constants/sizes_constant.dart';
import '../../../common/enum/fetch_enum.dart';
import '../../../common/service/network_service.dart';
import '../../../common/mixin/text_mixin.dart';
import '../../../data/model/offers_model.dart';
import '../../../presentation/utility/palette.dart';
import '../detailed_loan_model/detailed_loan_model.dart';
import 'detailed_button.dart';
import 'detailed_card.dart';
import '../../home_screen/home_model/home_model.dart';

// ignore: must_be_immutable
class DetailedListBuilder extends NetWorkService with TextServiceMixin {
  final HomeModel homeModel;
  DetailedListBuilder({
    Key? key,
    required this.homeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailedLoanModel>(
      builder: (controller) => Obx(
        () => ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: controller.offersList.length,
            itemBuilder: (BuildContext context, index) {
              Offer item = controller.offersList[index];
              dynamic rate = item.rate;
              dynamic amount = homeModel.loanTextController.text;
              dynamic expiry = homeModel.expiry.toStringAsFixed(0);
              String mounthlyPaymentString =
                  mounthlyPayment(rate, amount, expiry);

              if (index == 2 &&
                  controller.offersList.length ==
                      ResponseCount.partlyResponse) {
                return Column(
                  children: [
                    DetailedLoanCard(
                        aylikTaksitTutari: mounthlyPaymentString,
                        toplamMaliyet: totalCost(mounthlyPaymentString, expiry),
                        bankName: item.bank,
                        faizOrani: item.rate.toString()),
                    SizedBox(
                      height: Sizes.kPaddingH,
                    ),
                    DetailedButton(
                        onTap: () {
                          fetchOffers(
                              homeModel.loanTextController.text,
                              int.parse(expiry),
                              ResponseCount.fetchAllResponse);
                        },
                        buttonColor: Palette.detayButtonColor.withOpacity(0.5),
                        textColor: Palette.detayTextColor.withOpacity(0.6),
                        text: 'Size özel 12 farklı teklifimiz daha var'),
                  ],
                );
              }

              return DetailedLoanCard(
                  aylikTaksitTutari: mounthlyPaymentString,
                  toplamMaliyet: totalCost(mounthlyPaymentString, expiry),
                  bankName: item.bank,
                  faizOrani: item.rate.toString());
            }),
      ),
    );
  }
}
