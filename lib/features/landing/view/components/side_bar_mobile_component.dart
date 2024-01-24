import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/constants/core/svg_assets_const.dart';
import 'package:my_portofolio/shared/widgets/button/custom_button_widget.dart';
import 'package:my_portofolio/utils/extensions/iteration_ext.dart';
import 'package:my_portofolio/utils/functions/insert_color_func.dart';
import 'package:url_launcher/url_launcher.dart';

class SideBarMobileComponent extends StatelessWidget {
  final Function(int index) onTap;
  const SideBarMobileComponent({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Text(
              '<Yu-Dev/>',
              style: AppTextStyleDesktop.headingH3Bold,
            ),
          ),
          Container(
            height: 1,
            color: InsertColorFunc.call(
              darkTheme: Colors.white,
              lightTheme: Colors.black,
              context: context,
            ).withOpacity(0.5),
            width: double.infinity,
          ),
          16.verticalSpace,
          ...[
            'About',
            'Skills',
            'Experience',
            'Projects',
            'Contact',
          ]
              .extMapIndexed(
                (data, index) => Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 5.h,
                  ),
                  child: CustomButtonWidget.child(
                    borderRadius: 12.r,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                      vertical: 10.w,
                    ),
                    minimumHeight: 40.h,
                    minimumWidth: double.infinity,
                    primaryColor: Colors.transparent,
                    onTap: () {
                      onTap(index);
                    },
                    child: Row(
                      children: [
                        Text(
                          data,
                          style: AppTextStyles.body2NormalAll.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
          16.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 10.h,
            ),
            child: CustomButtonWidget.child(
              borderRadius: 12.r,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              minimumHeight: 40.h,
              minimumWidth: 0,
              primaryColor: Colors.transparent,
              child: Row(
                children: [
                  Text(
                    'Switch Theme',
                    style: AppTextStyles.body2NormalAll
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    Theme.of(context).brightness == Brightness.dark
                        ? SvgAssetsConst.icLightMode
                        : SvgAssetsConst.icDarkMode,
                    colorFilter: ColorFilter.mode(
                      InsertColorFunc.call(
                        darkTheme: AppColorsDark.gray600,
                        lightTheme: AppColorsLight.gray600,
                        context: context,
                      ),
                      BlendMode.srcIn,
                    ),
                  )
                ],
              ),
              onTap: () {
                Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                );
              },
            ),
          ),
          SizedBox(
            height: 6.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: CustomButtonWidget(
              borderRadius: 12.r,
              text: 'Download CV',
              onTap: () {
                launchUrl(
                  Uri.parse(
                    'https://raw.githubusercontent.com/achyusuf10/assets_storage/main/portofolio/CV%20ATS.pdf',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
