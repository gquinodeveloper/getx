import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:faker/faker.dart';

class SocketReactivoController extends GetxController {
  RxString message = RxString("");
  @override
  void onInit() {
    loadMessage();
    super.onInit();
  }

  @override
  void onReady() {
    Get.snackbar(
      "Hola",
      "Esto es una prueba",
      duration: Duration(seconds: 5),
      backgroundColor: Colors.amber,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  loadMessage() {
    Timer.periodic(Duration(seconds: 3), (time) {
      message.value = faker.lorem.sentence();
    });
  }
}
