import 'package:firebaser/screens/firebaser_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirebaserApp());
}

class FirebaserApp extends StatelessWidget {
  const FirebaserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirebaserScreen(),
    );
  }
}
