import 'package:flutter/material.dart';
import 'package:flutter_getx_g54/07-socket_reactivo/socket_reactivo_controller.dart';
import 'package:get/get.dart';

class SocketReactivoPage extends StatelessWidget {
  const SocketReactivoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SocketReactivoController>(
      init: SocketReactivoController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("Socket Reactivo"),
        ),
        body: Center(
          child: Obx(
            () => Text("${_.message}"),
          ),
        ),
      ),
    );
  }
}
