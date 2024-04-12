import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/constants/image_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/presentation/providers/auth_notifiers.dart';
import 'package:qoute_app/presentation/providers/auth_provider.dart';
import 'package:qoute_app/presentation/providers/theme_provider.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userStateProvider);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 1,
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
                color: Colors.white,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Dammy Richie",
          style: theme.textTheme.bodyMedium!.copyWith(
            fontSize: 17.sp,
            fontWeight: FontWeight.bold,
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
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://avataaars.io/?accessoriesType=Blank&avatarStyle=Circle&clotheColor=Black&clotheType=ShirtCrewNeck&eyeType=Hearts&eyebrowType=SadConcernedNatural&facialHairColor=Blonde&facialHairType=BeardMedium&hairColor=Black&hatColor=Blue01&mouthType=Twinkle&skinColor=Pale&topType=ShortHairSides",
                  height: 100.h,
                  width: 100.w,
                  loadingBuilder: (context, child, loadingProgress) =>
                      (loadingProgress == null)
                          ? child
                          : CircularProgressIndicator(),
                  errorBuilder: (context, url, error) => Icon(Icons.error),
                ),
                SizedBox(height: 5.h),
                Text("09068732878"),
                SizedBox(height: 5.h),
                Text("amailtodammy@gmail.com"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
