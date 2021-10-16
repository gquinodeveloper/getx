import 'package:flutter/material.dart';
import 'package:flutter_getx_g54/06-reactivos/reactivo_user_controller.dart';
import 'package:get/get.dart';

import 'widgets/item_user.dart';

class ReactivoUserPage extends StatelessWidget {
  const ReactivoUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactivoUserController>(
      init: ReactivoUserController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Users - Reactivo"),
            actions: [
              Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              Obx(
                () => Text(
                  "${_.favorites.length}",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 10.0),
            ],
          ),
          body: Obx(
            () => ListView.builder(
              itemCount: _.users.length,
              itemBuilder: (context, index) {
                final user = _.users[index];
                return ItemUser(
                  index: index,
                  user: user,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
