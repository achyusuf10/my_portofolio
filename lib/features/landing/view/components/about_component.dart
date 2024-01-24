import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/constants/core/svg_assets_const.dart';
import 'package:my_portofolio/utils/functions/get_current_layout_func.dart';
import 'package:my_portofolio/utils/functions/get_responsive_value_func.dart';
import 'package:my_portofolio/utils/functions/insert_color_func.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutDesktopComponent extends StatelessWidget {
  const AboutDesktopComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.primaryContainer,
      padding: GetResponsiveValueFunc.call<EdgeInsets>(
        context,
        mobile: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 64.h,
        ),
        tablet: EdgeInsets.symmetric(
          horizontal: 50.w,
          vertical: 70.h,
        ),
        desktop: EdgeInsets.symmetric(
          horizontal: 80.w,
          vertical: 70.h,
        ),
      ),
      child: GetResponsiveValueFunc.call<Widget>(
        context,
        mobile: Column(
          children: [
            Image.network(
              'https://raw.githubusercontent.com/achyusuf10/assets_storage/main/portofolio/photo_yusuf.png',
              height: 450.h,
              fit: BoxFit.fitHeight,
            ),
            48.verticalSpace,
            const _DescComponent(),
            48.verticalSpace,
            const _LinkComponent()
          ],
        ),
        tablet: Column(
          children: [
            Image.network(
              'https://raw.githubusercontent.com/achyusuf10/assets_storage/main/portofolio/photo_yusuf.png',
              height: 600.h,
              fit: BoxFit.fitHeight,
            ),
            48.verticalSpace,
            const _DescComponent(),
            48.verticalSpace,
            const _LinkComponent()
          ],
        ),
        desktop: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: _DescComponent(),
                ),
                SizedBox(
                  width: 128.w,
                ),
                Image.network(
                  'https://raw.githubusercontent.com/achyusuf10/assets_storage/main/portofolio/photo_yusuf.png',
                  height: 320.h,
                  width: 320.h,
                ),
              ],
            ),
            48.verticalSpace,
            const _LinkComponent()
          ],
        ),
      ),
    );
  }
}

class _DescComponent extends StatelessWidget {
  const _DescComponent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, I’m Yusuf 👋',
          style: GetCurrentLayoutFunc.isDesktop(context)
              ? AppTextStyleDesktop.headingH1Bold.copyWith(
                  color: InsertColorFunc.call(
                    context: context,
                    darkTheme: AppColorsDark.gray900,
                    lightTheme: AppColorsLight.gray900,
                  ),
                )
              : AppTextStyleMobile.headingH1SemiBold.copyWith(
                  color: InsertColorFunc.call(
                    context: context,
                    darkTheme: AppColorsDark.gray900,
                    lightTheme: AppColorsLight.gray900,
                  ),
                ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          """I am an experienced Flutter developer with approximately 2 years of hands-on expertise in building"""
          """ innovative mobile applications. I am an enthusiastic individual who is passionate about learning and"""
          """ has a deep interest in the details of application development. My aspiration is to build a dynamic and"""
          """ meaningful career in the field of mobile development, where I can continuously enhance my skills and"""
          """ make a maximum contribution. With a strong understanding of Flutter, proficiency in State"""
          """ Management, and the ability to write clean code, I am ready to deliver creative and efficient solutions"""
          """ in mobile application development.""",
          style: AppTextStyles.body2NormalAll,
        ),
        SizedBox(
          height: 48.h,
        ),
        Row(
          children: [
            SvgPicture.asset(
              SvgAssetsConst.icLocation,
              height: 24.w,
              width: 24.w,
            ),
            Text(
              '  Jombang, Indonesia',
              style: AppTextStyles.body2NormalAll.copyWith(),
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(6.h),
              height: 24.w,
              width: 24.w,
              child: Container(
                height: 8.h,
                width: 8.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
            ),
            Text(
              '  Available for new projects',
              style: AppTextStyles.body2NormalAll.copyWith(),
            ),
          ],
        ),
      ],
    );
  }
}

class _LinkComponent extends StatelessWidget {
  const _LinkComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            launchUrl(
              Uri.parse(
                  'https://www.linkedin.com/in/achmad-yusuf-bagus-setiawan-84a43323b/'),
            );
          },
          icon: SvgPicture.asset(
            SvgAssetsConst.icLinkedin,
            height: 32.h,
            colorFilter: ColorFilter.mode(
              InsertColorFunc.call(
                darkTheme: AppColorsDark.gray600,
                lightTheme: AppColorsLight.gray600,
                context: context,
              ),
              BlendMode.srcIn,
            ),
          ),
          constraints: const BoxConstraints(),
          splashRadius: 48.h,
          padding: const EdgeInsets.all(10).w,
        ),
        4.horizontalSpace,
        IconButton(
          onPressed: () {
            launchUrl(
              Uri.parse('https://github.com/achyusuf10'),
            );
          },
          icon: SvgPicture.asset(
            SvgAssetsConst.icGithub,
            height: 32.h,
            colorFilter: ColorFilter.mode(
              InsertColorFunc.call(
                darkTheme: AppColorsDark.gray600,
                lightTheme: AppColorsLight.gray600,
                context: context,
              ),
              BlendMode.srcIn,
            ),
          ),
          constraints: const BoxConstraints(),
          splashRadius: 48.h,
          padding: const EdgeInsets.all(10).w,
        ),
        4.horizontalSpace,
        IconButton(
          onPressed: () {
            launchUrl(
              Uri.parse(
                  'https://api.whatsapp.com/send?phone=628983997958&text=/info'),
            );
          },
          icon: SvgPicture.asset(
            SvgAssetsConst.icWhatsapp,
            height: 32.h,
            colorFilter: ColorFilter.mode(
              InsertColorFunc.call(
                darkTheme: AppColorsDark.gray600,
                lightTheme: AppColorsLight.gray600,
                context: context,
              ),
              BlendMode.srcIn,
            ),
          ),
          constraints: const BoxConstraints(),
          splashRadius: 48.h,
          padding: const EdgeInsets.all(10).w,
        ),
      ],
    );
  }
}
