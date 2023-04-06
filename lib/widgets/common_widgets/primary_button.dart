import 'package:flutter/material.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const PrimaryButton({
    super.key,
    this.onPressed,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: context.theme.primaryColor,
      minWidth: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text(
          text!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
