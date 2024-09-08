import 'package:firebaser/models/user.dart';
import 'package:firebaser/models/user_service.dart';

class UsersRepo {
  static List<User> users = [];

  static Future<void> getUsers() async {
    List data = await UserService.getUsers();
    users = List<User>.from(data.map((x) => User.fromJson(x)));
    users.sort((a, b) => a.email.compareTo(b.email));
  }

  static Future<bool> deleteUser(String userUid) async {
    bool response = await UserService.deleteUser(userUid);
    if (response) {
      users.removeWhere((user) => user.uid == userUid);
    }
    return response;
  }
}
