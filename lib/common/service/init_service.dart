import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import '../../screens/detailed_loan_screen/detailed_loan_model/detailed_loan_model.dart';
import '../../screens/home_screen/home_model/home_model.dart';

class InitializeServices extends Bindings {
  // ignore: missing_return
  @override
  Future<void> dependencies() async {
    Get.lazyPut(() => HomeModel());
    Get.lazyPut(() => DetailedLoanModel());
    await dotenv.load(fileName: ".env");
  }
}
