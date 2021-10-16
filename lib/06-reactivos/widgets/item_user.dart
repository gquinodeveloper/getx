import 'package:flutter/material.dart';
import 'package:flutter_getx_g54/06-reactivos/reactivo_user_controller.dart';
import 'package:flutter_getx_g54/models/user_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ItemUser extends StatelessWidget {
  ItemUser({
    required this.index,
    required this.user,
  });
  final UserModel user;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactivoUserController>(
      builder: (_) => ListTile(
        title: Text(
          "${user.firstName} ${user.lastName}",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "${user.email}",
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            //_.goDetail(user: user);
          },
          child: CircleAvatar(
            child: Text("${user.id}"),
          ),
        ),
        trailing: GestureDetector(
          onTap: () {
            _.onfavorite(index);
          },
          child: Obx(
            () => Icon(
              Icons.favorite,
              color: user.rxisFavorite ? Colors.pink : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
