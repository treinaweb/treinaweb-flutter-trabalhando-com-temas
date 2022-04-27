import 'package:flutter/material.dart';
import 'package:perfil/controller.dart';
import 'package:perfil/index.dart';
import 'package:perfil/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    PerfilController.isDark.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 67, 85, 248);
    return MaterialApp(
      title: 'Perfil',
      debugShowCheckedModeBanner: false,
      theme: ThemeDataPerfil.getLight(),
      darkTheme: ThemeDataPerfil.getDart(),
      themeMode: PerfilController.isDark.value,
      home: const MyHomePage(),
    );
  }
}
