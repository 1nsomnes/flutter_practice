import 'package:flutter/material.dart';
import 'package:flutter_practice/theme/light_mode.dart';
import 'package:flutter_practice/theme/dark_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;
}
