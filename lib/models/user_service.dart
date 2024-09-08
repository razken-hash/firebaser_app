import "dart:convert";

import "package:http/http.dart" as http;

class UserService {
  static String baseUrl =
      "https://firebaser-server-9fw85jy8c-kenniche-abderrazaks-projects.vercel.app";

  static Future<List> getUsers() async {
    final response = await http.get(
      Uri.parse('$baseUrl/get_users'),
      headers: {
        "Content-Type": "application/json",
      },
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return [];
      // throw Exception('Failed to get users');
    }
  }

  static Future<bool> deleteUser(String userUid) async {
    try {
      final response = await http.delete(
        Uri.parse(
          '$baseUrl/delete_user/$userUid',
        ),
        headers: {
          "Content-Type": "application/json",
        },
      );
      return response.statusCode == 200;
    } catch (error) {
      return false;
      // throw Exception('Failed to delete the user');
    }
  }
}
