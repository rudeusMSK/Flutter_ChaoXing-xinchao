import 'package:dio/dio.dart';
import 'package:flutter_application_buoi5/model/UsersModel/Users.dart';
import 'package:flutter_application_buoi5/api_Services/Api_Url.dart';

class UserServices {
  static Future<List<Users>> fetcUserList() async {
    final dio = Dio();
    Response<dynamic> response;

    response = await dio.get(ApiUrl.User_Endpoint);
    print("log: get Userlist response: ${response.data.toString()} ");

    List<Users> users = [];
    if (response.data != null && response.data['results'] != null) {
      for (var userJson in response.data['results']) {
        users.add(Users.fromJson(userJson));
      }
    }

    return users;
  }
}
