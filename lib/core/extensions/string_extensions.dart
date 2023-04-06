import 'package:qoute_app/constants/app_constants.dart';

extension Strings on String {
  // an extension to get a validated email on string
  bool get isValidEmail => Constants.emailRegex.hasMatch(this);
  // an extension to get a validated name on string
  bool get isValidFullName => Constants.fullNameRegex.hasMatch(this);
  // an extension to get a validated contact on string
  bool get isValidContact => Constants.contactRegex.hasMatch(this);

  // get app images
  String toImage() => "assets/images/$this";

  // get app svgs
  String toSvg() => "assets/svgs/$this.svg";
}
