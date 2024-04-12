import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';

class NavigatorIcon extends StatelessWidget {
  final String? icon;
  final bool? active;
  final String? label;
  final VoidCallback? onTap;
  const NavigatorIcon({
    super.key,
    this.icon,
    this.onTap,
    this.active,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: InkResponse(
        enableFeedback: true,
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(13.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.h),
              SvgPicture.asset(
                icon!,
                fit: BoxFit.scaleDown,
                color: (active!) ? context.theme.primaryColor : Colors.grey,
              ),
              SizedBox(height: 5.h),
              Text(
                label!,
                style: TextStyle(
                  color: (active!) ? context.theme.primaryColor : Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
