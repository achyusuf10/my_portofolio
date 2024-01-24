import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/constants/core/svg_assets_const.dart';
import 'package:my_portofolio/shared/widgets/button/custom_button_widget.dart';
import 'package:my_portofolio/utils/extensions/iteration_ext.dart';
import 'package:my_portofolio/utils/functions/get_responsive_value_func.dart';
import 'package:my_portofolio/utils/functions/insert_color_func.dart';
import 'package:my_portofolio/utils/loggers/app_logger.dart';
import 'package:url_launcher/url_launcher.dart';

class NavbarButtonDesktopComponent extends StatelessWidget {
  final Function(int index) onTap;
  final bool isScrolled;
  const NavbarButtonDesktopComponent({
    Key? key,
    required this.isScrolled,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: isScrolled
              ? BorderSide(
                  width: 0.5,
                  color: InsertColorFunc.call(
                    darkTheme: Colors.white,
                    lightTheme: Colors.black,
                    context: context,
                  ).withOpacity(0.5),
                )
              : BorderSide.none,
        ),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      padding: GetResponsiveValueFunc.call<EdgeInsets>(
        context,
        mobile: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        tablet: EdgeInsets.symmetric(
          horizontal: 50.w,
          vertical: 16.h,
        ),
        desktop: EdgeInsets.symmetric(
          horizontal: 80.w,
          vertical: 16.h,
        ),
      ),
      child: Row(
        children: [
          Text(
            '<Yu-Dev/>',
            style: AppTextStyleDesktop.headingH3Bold,
          ),
          const Spacer(),
          ...[
            'About',
            'Skills',
            'Experience',
            'Projects',
            'Contact',
          ]
              .extMapIndexed(
                (data, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: CustomButtonWidget(
                    borderRadius: 12.r,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    minimumHeight: 40.h,
                    minimumWidth: 0,
                    text: data,
                    primaryColor: Colors.transparent,
                    customTextStyle: AppTextStyles.body2NormalAll
                        .copyWith(color: Theme.of(context).primaryColor),
                    onTap: () {
                      onTap(index);
                    },
                  ),
                ),
              )
              .toList()
              .animate(
                interval: 500.ms,
              )
              .fadeIn(),
          Text(
            '|',
            style: AppTextStyles.body2NormalAll
                .copyWith(color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            width: 10.w,
          ),
          IconButton(
            constraints: const BoxConstraints(),
            padding: const EdgeInsets.all(4).r,
            onPressed: () {
              AppLogger.call(
                  AppTextStyleTablet.headingH1BoldTablet.color.toString());

              Get.changeThemeMode(
                Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              );
            },
            icon: SvgPicture.asset(
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
            ),
          ),
          SizedBox(
            width: 24.w,
          ),
          CustomButtonWidget(
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
        ],
      ),
    );
  }
}
