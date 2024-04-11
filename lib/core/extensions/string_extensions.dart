import 'package:qoute_app/constants/app_constants.dart';

extension StringX on String {
  /// An extension to get a validated email on string
  bool get isValidEmail => Constants.emailRegex.hasMatch(this);

  /// An extension to get a validated name on string
  bool get isValidFullName => Constants.fullNameRegex.hasMatch(this);

  /// An extension to get a validated contact on string
  bool get isValidContact => Constants.phoneRegex.hasMatch(this);

  /// An extension to get a validated contact on string
  bool get isValidAddress => Constants.addressRegex.hasMatch(this);

  /// An extension to get app images assets without rewriting a full path ['assets/images/path]
  String toImage() => "assets/images/$this.png";

  /// An extension to get app svg assets without rewriting a full path ['assets/images/path]
  String toSvg() => "assets/svgs/$this.svg";
}
