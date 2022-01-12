import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:teklifim_gelsin/common/constants/assets_constant.dart';
import 'package:teklifim_gelsin/common/enum/network_enum.dart';
import 'package:teklifim_gelsin/data/model/offers_model.dart';
import 'package:teklifim_gelsin/screens/detailed_loan_screen/detailed_loan_model/detailed_loan_model.dart';

// ignore: must_be_immutable
abstract class NetWorkService extends GetView<DetailedLoanModel> {
  late Dio _dio;
  final String _url = AssetsConstant.apiURL;

  NetWorkService({Key? key}) : super(key: key) {
    //Initialize Dio
    _dio = Dio();
  }

  Future fetchOffers(
    String amount,
    int mounthlyPeriod,
    int responseCount,
  ) async {
    //Clear Offer List
    controller.offersList.clear();

    //Create Map
    Map<String, Object> params = {
      "amount": amount,
      "monthly_period": mounthlyPeriod,
      "type": 0,
      "n": responseCount,
    };

    //Create Response
    try {
      var response = await _dio.post(
        _url,
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        data: jsonEncode(params),
      );
      OffersModel newsResponse = OffersModel.fromMap(response.data);
      controller.offersList.addAll(newsResponse.offers);
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return ApiResponseStatus.successfull;
      }
      if (e.type == DioErrorType.connectTimeout) {
        return ApiResponseStatus.connectTimeout;
      }
      if (e.type == DioErrorType.receiveTimeout) {
        return ApiResponseStatus.serverError;
      }
      if (e.type == DioErrorType.other) {
        return ApiResponseStatus.otherError;
      }
    } catch (e) {
      ApiResponseStatus.successfull;
    }
  }
}
