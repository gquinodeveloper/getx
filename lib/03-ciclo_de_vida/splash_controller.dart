import 'package:flutter_getx_g54/01-contador/contador_page.dart';
import 'package:flutter_getx_g54/04-consumo_api/user_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady");
    Future.delayed(Duration(seconds: 2), () {
      //Get.to(() => ContadorPage());
      //Get.off(() => ContadorPage());
      Get.off(() => UserPage());
    });

    super.onReady();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }
}
