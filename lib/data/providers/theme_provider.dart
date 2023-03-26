import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeChangeProvider = ChangeNotifierProvider<ThemeChangeNotifier>((ref) {
  return ThemeChangeNotifier();
});

class ThemeChangeNotifier extends ChangeNotifier {
  ThemeChangeNotifier() {
    _initialize();
  }

  // retrieve data from local storage
  void _initialize() async {}

  ThemeMode get themeMode => _themeMode;
  ThemeMode _themeMode = ThemeMode.light;

  void switchTheme() async {
    // timeOfDay = current device time in 24 hours format
    // example current time of device is 01:00 PM 24 hours format for
    // 1'0 clock is 13:00  basically the idea is everytime pass 12 afternoon will be a plus the hour time
    // to 12  [2 == 14, 3 == 15] so m calculating if timer is pass 5'0 clock it's evening and we
    // can set theme to night mode
    final _time = TimeOfDay.now();
    if (_time.hour < 12) {
      // time less than 12 noon is morning hence lightMode
      _themeMode = ThemeMode.light;
      notifyListeners();
    } else if (_time.hour < 17) {
      // time less than 5 evening is noon hence lightMode
      _themeMode = ThemeMode.light;
      notifyListeners();
    } else {
      // else night mode
      _themeMode = ThemeMode.dark;
      notifyListeners();
    }
  }
}
