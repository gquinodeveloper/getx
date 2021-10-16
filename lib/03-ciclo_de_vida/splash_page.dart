import 'package:flutter/material.dart';
import 'package:flutter_getx_g54/03-ciclo_de_vida/splash_controller.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Dibujando Splash");
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) {
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
