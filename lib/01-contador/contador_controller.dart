import 'package:get/get.dart';

class ContadorController extends GetxController {
  int counter = 0;
  int contador = 0;

  void increment() {
    counter++;
    update();
  }
}
