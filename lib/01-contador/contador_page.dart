import 'package:flutter/material.dart';
import 'package:flutter_getx_g54/01-contador/contador_controller.dart';
import 'package:get/get.dart';

class ContadorPage extends StatelessWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Estoy dibujando los widgets - sin estado");
    return GetBuilder<ContadorController>(
      init: ContadorController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Contador - getx"),
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: CircleAvatar(
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You have pushed the button this many times:'),
                Text(
                  "Contador 1: ${_.counter}",
                  style: Theme.of(context).textTheme.headline4,
                ),
                GetBuilder<ContadorController>(
                  id: "contador2",
                  builder: (__) {
                    return Text(
                      "Contador 2: ${_.counter}",
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _.increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
