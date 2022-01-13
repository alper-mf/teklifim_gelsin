import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../data/model/steps_model.dart';

class HomeModel extends GetxController {
  //Slide Up Panel Controller
  PanelController bottomSlidingBarCont = PanelController();

  //Loan Controller
  final TextEditingController loanTextController = TextEditingController();
  final RxDouble _loan = 1000.0.obs;
  RxDouble get loan => _loan;
  setLoan(double value) => _loan.value = value;

  //Mounth Controller
  final TextEditingController mounthTextController = TextEditingController();
  final RxDouble _expiry = 3.0.obs;
  RxDouble get expiry => _expiry;
  setExpiry(double value) => _expiry.value = value;

  //Show Offer Or Error Container
  final RxBool _showContainer = true.obs;
  RxBool get showContainer => _showContainer;
  setShowContainer(bool value) => _showContainer.value = value;

  //Show Offer Or Error Container
  final RxBool _showOffers = false.obs;
  RxBool get showOffers => _showOffers;
  setShowOffers(bool value) => _showOffers.value = value;

  //Fetch list from model response
  List<StepsModel> stepsListTileModel = StepsModel.getStepList();

  @override
  void onInit() {
    loanTextController.text = _loan.toStringAsFixed(0);
    mounthTextController.text = '3 Ay';
    super.onInit();
  }
}
