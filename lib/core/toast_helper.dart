import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class ToastHelper {
  const ToastHelper();

  static Future<dynamic> success(context, {message}) async {
    return showToast(
      "$message",
      context: context,
      backgroundColor: Colors.greenAccent,
      position: StyledToastPosition.bottom,
    );
  }

  static Future<dynamic> err(context, {message}) async {
    return showToast(
      "$message",
      context: context,
      backgroundColor: Colors.redAccent,
      position: StyledToastPosition.bottom,
    );
  }
}
