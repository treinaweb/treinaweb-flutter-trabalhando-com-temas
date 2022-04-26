import 'package:flutter/material.dart';
import 'package:perfil/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 67, 85, 248);
    return MaterialApp(
      title: 'Perfil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColorLight: Colors.black,
          primaryColor: primaryColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: primaryColor,
          ),
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          dividerColor: Colors.black,
          listTileTheme: const ListTileThemeData(
            textColor: Colors.black,
            iconColor: primaryColor,
          ),
          snackBarTheme: const SnackBarThemeData(
            actionTextColor: primaryColor,
          )),
      home: const MyHomePage(),
    );
  }
}
