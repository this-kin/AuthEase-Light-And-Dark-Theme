import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = ChangeNotifierProvider<ThemeChangeNotifier>((ref) {
  return ThemeChangeNotifier();
});

class ThemeChangeNotifier extends ChangeNotifier {
  ThemeChangeNotifier();

  ThemeData get theme => _theme;

  ThemeMode themeMode = ThemeMode.light;

  static ThemeData _theme = ThemeData.light();

  void changeTheme() {
    if (_theme == ThemeData.light()) {
      _theme = ThemeData.dark();
      themeMode = ThemeMode.dark;
      notifyListeners();
    } else {
      _theme = ThemeData.light();
      themeMode = ThemeMode.light;
      notifyListeners();
    }
  }
}
