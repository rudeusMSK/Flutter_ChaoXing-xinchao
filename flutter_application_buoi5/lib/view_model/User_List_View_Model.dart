import 'package:flutter/material.dart';
import 'package:flutter_application_buoi5/api_Services/UserServices.dart';
import 'package:flutter_application_buoi5/model/UsersModel/Users.dart';

class UserListViewModel extends ChangeNotifier {
  List<Users> user = <Users>[];
  String errorMessage = '';

  void fetcUserList() async {
    try {
      user = await UserServices.fetcUserList();
      notifyListeners();
    } catch (e) {
      errorMessage = 'Failed to fetch user list: $e';
      notifyListeners();
    }
  }
}
