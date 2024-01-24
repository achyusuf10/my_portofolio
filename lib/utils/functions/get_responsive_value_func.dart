import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portofolio/constants/common/app_const.dart';
import 'package:my_portofolio/utils/loggers/app_logger.dart';

class GetResponsiveValueFunc {
  static T call<T>(
    BuildContext context, {
    required T mobile,
    required T tablet,
    required T desktop,
  }) {
    var width = MediaQuery.of(context).size.width;
    if (width >= 1024) {
      if (ScreenUtil.defaultSize != AppConst.appDesignSizeWeb) {}
      ScreenUtil.init(
        context,
        minTextAdapt: true,
        designSize: AppConst.appDesignSizeWeb,
      );

      return desktop;
    } else if (width < 1024 && width >= 600) {
      ScreenUtil.init(
        context,
        minTextAdapt: true,
        designSize: const Size(1024, 1366),
      );
      AppLogger.call('tablet');
      return tablet;
    } else {
      AppLogger.call('mobile');
      ScreenUtil.init(
        context,
        minTextAdapt: true,
        designSize: AppConst.appDesignSizeMobile,
      );
      return mobile;
    }
  }
}
