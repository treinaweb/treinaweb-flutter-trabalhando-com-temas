import 'package:flutter/material.dart';

class PerfilController {
  PerfilController._();

  static var isDark = ValueNotifier(ThemeMode.system);

  static setThemeMode(ThemeMode theme) {
    isDark.value = theme;
  }
}
