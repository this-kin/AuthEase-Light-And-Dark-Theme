import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoute_app/constants/image_constants.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';

// ignore: non_constant_identifier_names
AppBar MyAppbar(BuildContext context) {
  return AppBar(
    leading: Semantics(
      button: true,
      child: InkWell(
        onTap: () {
          // go back
        },
        borderRadius: BorderRadius.circular(20.sp),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: SvgPicture.asset(
            ConstantImage.back,
            fit: BoxFit.scaleDown,
            color: context.theme.iconTheme.color,
          ),
        ),
      ),
    ),
    backgroundColor: context.theme.scaffoldBackgroundColor,
  );
}
