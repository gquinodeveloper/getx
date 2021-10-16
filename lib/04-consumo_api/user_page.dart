import 'package:flutter/material.dart';
import 'package:flutter_getx_g54/04-consumo_api/user_controller.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: UserController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Users"),
            actions: [
              Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              GetBuilder<UserController>(
                id: "contador",
                builder: (__) {
                  return Text(
                    "${_.favorites.length}",
                    style: TextStyle(color: Colors.white),
                  );
                },
              ),
              SizedBox(width: 10.0),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Hola Gustavo",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GetBuilder<UserController>(
                id: "lista",
                builder: (___) {
                  return _.isLoading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: _.users.length,
                          itemBuilder: (context, index) {
                            final user = _.users[index];
                            return ListTile(
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
                                  _.goDetail(user: user);
                                },
                                child: CircleAvatar(
                                  child: Text("${user.id}"),
                                ),
                              ),
                              trailing: GestureDetector(
                                onTap: () {
                                  _.onfavorite(index);
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: user.isFavorite
                                      ? Colors.pink
                                      : Colors.grey,
                                ),
                              ),
                            );
                          },
                        );
                },
              ),
              Container(
                color: Colors.amber,
                height: 200.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
