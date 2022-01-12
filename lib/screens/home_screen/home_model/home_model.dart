import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:teklifim_gelsin/data/model/steps_model.dart';

class HomeModel extends GetxController {
  //Slide Up Panel Controller
  PanelController bottomSlidingBarCont = PanelController();

  //Loan Controller
  final TextEditingController loanTextController = TextEditingController();
  final RxDouble _loanDoble = 1000.0.obs;
  RxDouble get loanDouble => _loanDoble;
  setLoanDouble(double value) => _loanDoble.value = value;

  //Mounth Controller
  final TextEditingController mounthTextController = TextEditingController();
  final RxDouble _mounth = 3.0.obs;
  RxDouble get mounthDouble => _mounth;
  setMounth(double value) => _mounth.value = value;

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
    loanTextController.text = _loanDoble.toStringAsFixed(0);
    mounthTextController.text = '3 Ay';
    super.onInit();
  }
}
