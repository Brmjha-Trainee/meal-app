import 'package:flutter/material.dart';
import 'package:meal_app/screens/sign_in_page.dart';
import 'package:meal_app/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const SignInPage(),
    );
  }
}
