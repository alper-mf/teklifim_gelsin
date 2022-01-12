import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teklifim_gelsin/presentation/utility/palette.dart';
import 'package:teklifim_gelsin/screens/detailed_loan_screen/detailed_loan_model/detailed_loan_model.dart';
import 'package:teklifim_gelsin/screens/home_screen/home_model/home_model.dart';

import 'detailed_loan_widgets/detailed_appbar.dart';
import 'detailed_loan_widgets/detailed_list_builder.dart';

class DetailedLoanScreen extends GetView<DetailedLoanModel> {
  const DetailedLoanScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeModel>(
      builder: (_homeModel) => Scaffold(
        backgroundColor: Palette.primaryColor,
        appBar: const LoanScreenAppBar(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 14.0),
            child: DetailedListBuilder(
              homeModel: _homeModel,
            ),
          ),
        ),
      ),
    );
  }
}
