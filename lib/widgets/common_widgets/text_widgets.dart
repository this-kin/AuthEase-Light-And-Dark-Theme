import 'package:flutter/material.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';

class SpanText extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const SpanText({
    super.key,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          text: title,
          style: context.theme.textTheme.bodyLarge!.copyWith(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
              text: subtitle,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: context.theme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
