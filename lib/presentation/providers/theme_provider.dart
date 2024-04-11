import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = ChangeNotifierProvider<ThemeChangeNotifier>((ref) {
  return ThemeChangeNotifier();
});

class ThemeChangeNotifier extends ChangeNotifier {
  ThemeChangeNotifier();

  ThemeMode get themeMode => _themeMode;
  ThemeMode _themeMode = ThemeMode.light;

  void changeTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    }
    _themeMode = ThemeMode.light;
    notifyListeners();
  }
}
