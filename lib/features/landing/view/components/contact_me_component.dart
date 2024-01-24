import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/constants/core/svg_assets_const.dart';
import 'package:my_portofolio/utils/functions/get_responsive_value_func.dart';
import 'package:my_portofolio/utils/functions/insert_color_func.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeComponent extends StatelessWidget {
  const ContactMeComponent({super.key});
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
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 4.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
              color: InsertColorFunc.call(
                context: context,
                darkTheme: AppColorsDark.gray200,
                lightTheme: AppColorsLight.gray200,
              ),
            ),
            child: Text(
              'Get in touch',
              style: AppTextStyles.body3MediumAll,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'What’s next? Feel free to reach out to me if you\'re looking for a developer, have a query, or simply want to connect.',
            style: GetResponsiveValueFunc.call<TextStyle>(
              context,
              mobile: AppTextStyleTabletMobile.subtitleNormal,
              tablet: AppTextStyleTabletMobile.subtitleNormal,
              desktop: AppTextStyleDesktop.subtitleNormal,
            ),
          ),
          SizedBox(
            height: 48.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                SvgAssetsConst.icInbox,
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
              20.horizontalSpace,
              Text(
                'achyusufbagus@gmail.com',
                style: GetResponsiveValueFunc.call(
                  context,
                  mobile: AppTextStyleTabletMobile.headingH2SemiBold,
                  desktop: AppTextStyleDesktop.headingH2SemiBold,
                  tablet: AppTextStyleTabletMobile.headingH2SemiBold,
                ),
              ),
              10.horizontalSpace,
              IconButton(
                onPressed: () {
                  Clipboard.setData(
                          const ClipboardData(text: 'achyusufbagus@gmail.com'))
                      .then(
                    (value) => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Copied to Clipboard'),
                        duration: Duration(seconds: 2),
                      ),
                    ),
                  );
                },
                icon: SvgPicture.asset(
                  SvgAssetsConst.icCopy,
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
          ),
          6.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                SvgAssetsConst.icPhone,
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
              20.horizontalSpace,
              Text(
                '+62 898-399-795-8',
                style: GetResponsiveValueFunc.call(
                  context,
                  mobile: AppTextStyleTabletMobile.headingH2SemiBold,
                  desktop: AppTextStyleDesktop.headingH2SemiBold,
                  tablet: AppTextStyleTabletMobile.headingH2SemiBold,
                ),
              ),
              10.horizontalSpace,
              IconButton(
                onPressed: () {
                  Clipboard.setData(const ClipboardData(text: '+628983997958'))
                      .then(
                    (value) => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Copied to Clipboard'),
                        duration: Duration(seconds: 2),
                      ),
                    ),
                  );
                },
                icon: SvgPicture.asset(
                  SvgAssetsConst.icCopy,
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
          ),
          38.verticalSpace,
          Text(
            'You may also find me on these platforms!',
            style: AppTextStyles.body2NormalAll,
          ),
          10.verticalSpace,
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
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
                        'https://play.google.com/store/apps/developer?id=Yu+Code+Labs'),
                  );
                },
                icon: SvgPicture.asset(
                  SvgAssetsConst.icPlaystore,
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
              4.horizontalSpace,
              IconButton(
                onPressed: () {
                  launchUrl(
                    Uri.parse('https://instagram.com/achyusuf10'),
                  );
                },
                icon: SvgPicture.asset(
                  SvgAssetsConst.icInstagram,
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
          )
        ],
      ),
    );
  }
}
