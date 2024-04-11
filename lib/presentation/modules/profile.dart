import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qoute_app/constants/image_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/presentation/providers/auth_provider.dart';
import 'package:qoute_app/presentation/providers/theme_provider.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        actions: [
          IconButton(
            onPressed: () {
              // change theme
              ref.read(themeProvider.notifier).changeTheme();
            },
            icon: Icon(Icons.dark_mode_rounded),
          ),
          SizedBox(width: 10.w),
          IconButton(
            onPressed: () {
              // logout
              ref.read(authProvider.notifier).logout();
            },
            icon: Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(),
        ),
      ),
    );
  }
}
