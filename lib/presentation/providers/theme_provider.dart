import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeChangeProvider = ChangeNotifierProvider<ThemeChangeNotifier>((ref) {
  return ThemeChangeNotifier();
});

class ThemeChangeNotifier extends ChangeNotifier {
  ThemeChangeNotifier();

  ThemeMode get themeMode => _themeMode;
  ThemeMode _themeMode = ThemeMode.light;
}
