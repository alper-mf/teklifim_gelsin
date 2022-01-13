import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../common/constants/sizes_constant.dart';
import '../../../common/constants/text_styles.dart';
import '../../../common/mixin/text_mixin.dart';
import '../../../presentation/utility/palette.dart';
import 'detailed_button.dart';

class DetailedLoanCard extends StatelessWidget with TextServiceMixin {
  String aylikTaksitTutari;
  String toplamMaliyet;
  String faizOrani;
  String bankName;

  DetailedLoanCard(
      {Key? key,
      required this.aylikTaksitTutari,
      required this.toplamMaliyet,
      required this.bankName,
      required this.faizOrani})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.detailedCardRadius),
          border: Border.all(
            width: 1,
            color: Palette.sliderActiveColor,
          )),
      child: Column(
        children: [
          SvgPicture.asset(bankaLogo(bankName), height: Sizes.kHeight * .05),
          SizedBox(
            height: Sizes.kPaddingH / 2,
          ),
          Text(
            'Aylık Taksit',
            style: ITextStyle.caption(Palette.textBoldColor),
          ),
          Text(
            '₺' + aylikTaksitTutari,
            style: ITextStyle.h2(
              Palette.textBoldColor,
              true,
            ),
          ),
          SizedBox(
            height: Sizes.kPaddingH,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Toplam Maliyet',
                    style: ITextStyle.caption(Palette.textBoldColor),
                  ),
                  Text(
                    '₺' + toplamMaliyet,
                    style: ITextStyle.h2(
                      Palette.textBoldColor,
                      true,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'Faiz Oranı',
                    style: ITextStyle.caption(Palette.textBoldColor),
                  ),
                  Text(
                    '%' + faizOrani,
                    style: ITextStyle.h2(
                      Palette.textBoldColor,
                      true,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: Sizes.kPaddingH,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DetailedButton(
                buttonColor: Palette.basvurButtonColor,
                text: 'Detay',
                textColor: Palette.basvurTextColor,
              ),
              DetailedButton(
                buttonColor: Palette.detayButtonColor,
                text: 'Başvur',
                textColor: Palette.detayTextColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
