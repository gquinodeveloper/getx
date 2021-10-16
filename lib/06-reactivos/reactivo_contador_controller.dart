import 'package:get/get.dart';

class ReactivoContadorController extends GetxController {
  @override
  void onInit() {
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    status = null;
    print("onReady");
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }

  //Tipos de datos
  String? name;
  int? age;
  double? price;
  bool? status;

  //Variables Reactivos
  RxString _name = RxString("");
  RxInt _age = RxInt(0);
  RxDouble _price = RxDouble(0.0);
  RxBool _status = RxBool(true);
  RxMap _map = RxMap();
  RxList _list = RxList([]);
  RxList<String> _listString = RxList([]);

  RxInt counter1 = RxInt(0);
  RxInt counter2 = RxInt(10);
  void increment() {
    counter1++;
  }

  void decrement() {
    counter2--;
  }
}
