import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portofolio/constants/common/app_const.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  // screen sizes
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width >= 1024) {
      ScreenUtil.init(
        context,
        designSize: AppConst.appDesignSizeWeb,
      );
      return desktop;
    } else if (width < 1024 && width >= 600) {
      ScreenUtil.init(
        context,
        designSize: const Size(1024, 628),
      );
      return tablet;
    } else {
      ScreenUtil.init(context, designSize: AppConst.appDesignSizeMobile);
      return mobile;
    }
  }
}
