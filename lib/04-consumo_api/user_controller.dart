import 'package:flutter_getx_g54/05-pasar_datos/detail_user_page.dart';
import 'package:flutter_getx_g54/models/user_model.dart';
import 'package:flutter_getx_g54/providers/user_provider.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final userProvider = UserProvider();
  List<UserModel> users = [];
  Map<String, UserModel> favorites = {};
  bool isLoading = true;

  @override
  void onInit() {
    _loadUser();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  _loadUser() async {
    users = await userProvider.getUsers(page: 1);
    print("${users.length}");
    isLoading = false;
    update(["lista"]);
  }

  onfavorite(int index) {
    final user = users[index];
    user.isFavorite = user.isFavorite ? false : true;
    if (user.isFavorite)
      favorites[user.firstName] = user;
    else
      favorites.remove(user.firstName);

    update(["lista", "contador"]);
  }

  goDetail({
    required UserModel user,
  }) {
    Get.to(() => DetailUserPage(), arguments: user);
  }
}
