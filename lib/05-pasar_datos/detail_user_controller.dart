import 'package:flutter_getx_g54/models/user_model.dart';
import 'package:get/get.dart';

class DetailUserController extends GetxController {
  UserModel user = UserModel();
  @override
  void onInit() {
    _loadInit();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  _loadInit() {
    user = Get.arguments as UserModel;
  }
}
