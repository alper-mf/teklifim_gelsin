import 'dart:math';

import 'package:teklifim_gelsin/common/constants/assets_constant.dart';

class TextServiceMixin {
  //#
  //Get Bank Name On API Than Return Bank Logo
  String bankaLogo(String bankName) {
    switch (bankName) {
      case 'Akbank':
        return AssetsConstant.akbank;
      case 'Vakıfbank':
        return AssetsConstant.vakifbank;
      case 'Garanti':
        return AssetsConstant.garanti;
      case 'TEB':
        return AssetsConstant.teb;
      case 'OdeaBank':
        return AssetsConstant.odeabank;
      case 'İş Bankası':
        return AssetsConstant.isbankasi;
      case 'Kuveyttürk':
        return AssetsConstant.turkiyefinans;
      case 'Ziraat':
        return AssetsConstant.ziraat;
      case 'AlbarakaTürk':
        return AssetsConstant.albaraka;
      case 'ING':
        return AssetsConstant.ing;
      case 'NKOLAY':
        return AssetsConstant.nkolay;
      case 'TürkiyeFinans':
        return AssetsConstant.turkiyefinans;

      default:
        return AssetsConstant.ziraat;
    }
  }

  //Calculate Mounthly Payment Method
  String mounthlyPayment(double rate, var amount, var expiry) {
    dynamic totalInterestRate = rate * 0.012;

    num a = pow(1 + totalInterestRate, int.parse(expiry));
    num b = pow(1 + totalInterestRate, int.parse(expiry));

    double monthlyPayments =
        (((int.parse(amount) * totalInterestRate) * a) / (b - 1));

    return monthlyPayments.toStringAsFixed(0);
  }

  //Calculate Total Cost Method
  String totalCost(String mounthlyPayment, String expiry) {
    String totalCostString =
        (int.parse(mounthlyPayment) * int.parse(expiry)).toString();
    return totalCostString;
  }
}
