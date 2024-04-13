import 'package:flutter/material.dart';
import 'package:qoute_app/core/extensions/string_extensions.dart';

/// A utility class that holds constants for assets strings.
/// This class has no constructor and all variables are `static`.
@immutable
class ConstantImage {
  /// The path for back svg asset
  static final back = 'back'.toSvg();

  /// The path for back home  svg asset
  static final home = 'home'.toSvg();

  /// The path for back organize svg asset
  static final organize = 'organize'.toSvg();

  /// The path for back statistic svg asset
  static final statistics = 'statistic'.toSvg();

  /// The path for back profile svg asset
  static final profile = 'profile'.toSvg();
}
