import 'package:firebaser/controllers/users_controller.dart';
import 'package:firebaser/screens/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UsersController>(
      builder: (context, usersController, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 25,
              ),
              child: Row(
                children: [
                  Text(
                    "Users email",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: List.generate(
                usersController.users.length,
                (index) => UserTile(
                  user: usersController.users[index],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
