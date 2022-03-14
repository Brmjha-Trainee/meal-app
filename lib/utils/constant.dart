import 'package:flutter/material.dart';

const pink = Color(0xFFE91E63);
const yellow = Color(0xFFFFEAAA);
const darkYellow = Color(0xFFFFC107);
const white = Color(0xFFFFFFFF);
const grey = Color(0xFF424242);

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: yellow,
    primarySwatch: Colors.pink,
    textTheme: textTheme(),
    drawerTheme: drawerTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarThemeData(),
  );
}

BottomNavigationBarThemeData bottomNavigationBarThemeData() {
  return const BottomNavigationBarThemeData(
    backgroundColor: pink,
    selectedItemColor: yellow,
    unselectedItemColor: white,
  );
}

DrawerThemeData drawerTheme() {
  return const DrawerThemeData(
    backgroundColor: yellow,
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    titleTextStyle: TextStyle(
      color: white,
      // fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
  );
}

TextTheme textTheme() {
  return const TextTheme(
//There are 6 headlines (headline1 to headline6)
//and they are the largest text to put on the screen.
// They should be reserved for short and important texts such as:
    //      titles
    //      numerals
    headline1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 36,
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    headline3: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    headline4: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    headline5: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    headline6: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
// There are 2 body types (bodyText1 and bodyText2).
// They are smaller than subtitles
// should typically be used for longer texts, such as description.
    bodyText1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      height: 1.75,
      fontSize: 12,
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 10,
    ),
  );
}
