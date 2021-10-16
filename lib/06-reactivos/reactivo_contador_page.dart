import 'package:flutter/material.dart';
import 'package:flutter_getx_g54/06-reactivos/reactivo_contador_controller.dart';
import 'package:get/get.dart';

class ReactivoContadorPage extends StatelessWidget {
  const ReactivoContadorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Estoy dibujando los widgets - sin estado");
    return GetBuilder<ReactivoContadorController>(
      init: ReactivoContadorController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Contador Reactivo - getx"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You have pushed the button this many times:'),
                Obx(
                  () {
                    print("Solo estoy redibujando esta sección");
                    return Text(
                      "${_.counter1}",
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
                Divider(),
                Obx(
                  () => Text(
                    "${_.counter2}",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: _.decrement,
                tooltip: 'Increment',
                child: Icon(Icons.minimize_outlined),
              ),
              SizedBox(width: 10.0),
              FloatingActionButton(
                onPressed: _.increment,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              )
            ],
          ),
        );
      },
    );
  }
}
