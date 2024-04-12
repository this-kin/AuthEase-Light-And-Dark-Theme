import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/presentation/widgets/home_widget/bottom_painter.dart';
import 'package:qoute_app/presentation/widgets/home_widget/home_icon_widget.dart';

class Home extends StatelessWidget {
  final StatefulNavigationShell? navigationShell;
  const Home({
    super.key,
    this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: navigationShell,
      bottomNavigationBar: Container(
        height: 100.h,
        width: double.infinity,
        child: CustomPaint(
          child: Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Wrap(
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.start,
              children: <NavigatorIcon>[
                NavigatorIcon(
                  label: "Home",
                  active: _getIndex(0),
                  onTap: () => _onTap(0),
                  icon: AppConstant.home,
                ),
                NavigatorIcon(
                  label: "Organizer",
                  active: _getIndex(1),
                  onTap: () => _onTap(1),
                  icon: AppConstant.organize,
                ),
                NavigatorIcon(
                  label: "Statistics",
                  active: _getIndex(2),
                  onTap: () => _onTap(2),
                  icon: AppConstant.statistics,
                ),
                NavigatorIcon(
                  label: "Profile",
                  active: _getIndex(3),
                  onTap: () => _onTap(3),
                  icon: AppConstant.profile,
                ),
              ],
            ),
          ),
          painter: BottomPainter(
              backgroundColor: context.theme.scaffoldBackgroundColor),
        ),
      ),
    );
  }

  bool _getIndex(index) => navigationShell!.currentIndex == index;

  void _onTap(index) {
    navigationShell!.goBranch(index, initialLocation: _getIndex(index));
  }
}
