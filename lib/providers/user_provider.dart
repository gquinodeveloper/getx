import 'package:dio/dio.dart';
import 'package:flutter_getx_g54/models/user_model.dart';

class UserProvider {
  Future<List<UserModel>> getUsers({
    required int page,
  }) async {
    final dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": page,
        "delay": 5,
      },
    );

    return (response.data["data"] as List)
        .map((json) => UserModel.fromJson(json))
        .toList();
  }
}
