import 'package:flutter/material.dart';
import 'package:perfil/index.dart';
import 'package:perfil/theme_data.dart';

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
      theme: ThemeDataPerfil.getLight(),
      darkTheme: ThemeDataPerfil.getDart(),
      home: const MyHomePage(),
    );
  }
}
