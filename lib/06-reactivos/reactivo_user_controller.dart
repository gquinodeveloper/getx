import 'package:flutter_getx_g54/models/user_model.dart';
import 'package:flutter_getx_g54/providers/user_provider.dart';
import 'package:get/get.dart';

class ReactivoUserController extends GetxController {
  final userProvider = UserProvider();
  RxList<UserModel> users = RxList([]);
  RxMap<String, UserModel> favorites = RxMap();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    _loadUser();
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  _loadUser() async {
    users.value = await userProvider.getUsers(page: 1);
    print("${users.length}");
  }

  onfavorite(int index) {
    final user = users[index];
    print(user.firstName);
    user.rxisFavorite = user.rxisFavorite ? false : true;
    if (user.rxisFavorite)
      favorites[user.firstName] = user;
    else
      favorites.remove(user.firstName);
  }
}
