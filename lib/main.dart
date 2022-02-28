import 'package:flutter/material.dart';
import 'package:meal_app/screens/home_page.dart';
import 'package:meal_app/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: yellow,
          drawerTheme: const DrawerThemeData(
            backgroundColor: yellow,
          )),
      home: const HomePage(),
    );
  }
}
