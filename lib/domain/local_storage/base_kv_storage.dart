import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BaseKeyValueStorage {
  const BaseKeyValueStorage._();

  static BaseKeyValueStorage? _instance;

  static FlutterSecureStorage? _secureStorage;
  static SharedPreferences? _preference;

  static BaseKeyValueStorage get instance =>
      _instance ?? const BaseKeyValueStorage._();

  Future<void> init() async {
    _secureStorage ??= const FlutterSecureStorage();
    _preference ??= await SharedPreferences.getInstance();
  }

  T? getCommon<T>(String key) {
    try {
      switch (T) {
        case String:
          return _preference!.getString(key) as T?;
        case int:
          return _preference!.getInt(key) as T?;
        case bool:
          return _preference!.getBool(key) as T?;
        case double:
          return _preference!.getDouble(key) as T?;
        default:
          return _preference!.get(key) as T?;
      }
    } on Exception {
      return null;
    }
  }

  Future<bool> setCommon<T>(String key, T value) {
    switch (T) {
      case String:
        return _preference!.setString(key, value as String);
      case int:
        return _preference!.setInt(key, value as int);
      case bool:
        return _preference!.setBool(key, value as bool);
      case double:
        return _preference!.setDouble(key, value as double);
      default:
        return _preference!.setString(key, value as String);
    }
  }

  Future<String?> getEncrypted(String key) async {
    try {
      return _secureStorage!.read(key: key);
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  Future<bool> setEncrypted(String key, String value) {
    try {
      _secureStorage!.write(key: key, value: value);
      return Future.value(true);
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  Future<bool> clearEncrypted() async {
    try {
      await _secureStorage!.deleteAll();
      return true;
    } on PlatformException catch (e) {
      return Future.error(e);
    }
  }

  Future<bool> clearShared() async {
    try {
      await _preference!.clear();
      return true;
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
