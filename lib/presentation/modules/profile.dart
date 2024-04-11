import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/constants/image_constants.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: Semantics(
          button: true,
          child: InkWell(
            onTap: () {
              // go back
              GoRouter.of(context).pop();
            },
            borderRadius: BorderRadius.circular(20.sp),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: SvgPicture.asset(
                ConstantImage.back,
                fit: BoxFit.scaleDown,
                color: theme.iconTheme.color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
