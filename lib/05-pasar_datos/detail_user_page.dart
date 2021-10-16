import 'package:flutter/material.dart';
import 'package:flutter_getx_g54/05-pasar_datos/detail_user_controller.dart';
import 'package:get/get.dart';

class DetailUserPage extends StatelessWidget {
  const DetailUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailUserController>(
      init: DetailUserController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Detail User"),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(_.user.avatar ?? ""),
                ),
                Text(
                  "${_.user.firstName} ${_.user.lastName}",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${_.user.email}",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
