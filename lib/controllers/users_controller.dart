import 'package:firebaser/models/users_repo.dart';
import 'package:flutter/material.dart';

class UsersController extends ChangeNotifier {
  List users = UsersRepo.users;

  void getUsers() async {
    await UsersRepo.getUsers();
    users = UsersRepo.users;
    notifyListeners();
  }

  Future<bool> deleteUser(String userUid) async {
    bool response = await UsersRepo.deleteUser(userUid);
    if (response) {
      users = UsersRepo.users;
      notifyListeners();
    }
    return response;
  }

  UsersController() {
    getUsers();
  }
}
