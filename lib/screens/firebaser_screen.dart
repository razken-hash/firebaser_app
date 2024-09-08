import 'package:firebaser/controllers/users_controller.dart';
import 'package:firebaser/screens/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirebaserScreen extends StatelessWidget {
  const FirebaserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UsersController(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Firebaser'),
          backgroundColor: Colors.grey.shade300,
        ),
        body: const UsersScreen(),
      ),
    );
  }
}
