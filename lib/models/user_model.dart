import 'package:get/state_manager.dart';

class UserModel {
  UserModel({
    this.id = 0,
    this.email,
    this.firstName = "",
    this.lastName = "",
    this.avatar,
    this.isFavorite = false,
  });

  int id;
  String? email;
  String firstName;
  String lastName;
  String? avatar;
  bool isFavorite;

  //Reactiva
  RxBool _rxisFavorite = RxBool(false);
  set rxisFavorite(bool value) => _rxisFavorite.value = value;
  bool get rxisFavorite => _rxisFavorite.value;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
