import '/src/config/route_constants.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(RouteConstants.mainPageRoute);
    super.onInit();
  }
}