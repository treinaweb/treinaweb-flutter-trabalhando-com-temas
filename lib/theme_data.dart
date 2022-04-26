import 'package:flutter/material.dart';

class ThemeDataPerfil {
  static final primaryColor = Color.fromARGB(255, 67, 85, 248);
  ThemeDataPerfil._();

  static ThemeData getLight() {
    return ThemeData(
      primaryColorLight: Colors.black,
      primaryColor: primaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      dividerColor: Colors.black,
      listTileTheme: ListTileThemeData(
        textColor: Colors.black,
        iconColor: primaryColor,
      ),
      snackBarTheme: SnackBarThemeData(
        actionTextColor: primaryColor,
      ),
    );
  }

  static ThemeData getDart() {
    return ThemeData(
      primaryColorLight: Colors.white,
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
      ),
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        bodyText2: const TextStyle(
          color: Colors.white,
        ),
      ),
      dividerColor: Colors.white,
      listTileTheme: ListTileThemeData(
        textColor: Colors.white,
        iconColor: primaryColor,
      ),
      snackBarTheme: SnackBarThemeData(
        actionTextColor: primaryColor,
      ),
    );
  }
}
