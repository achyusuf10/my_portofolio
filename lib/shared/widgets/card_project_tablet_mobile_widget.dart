import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_shadows.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/constants/core/svg_assets_const.dart';
import 'package:my_portofolio/shared/models/project_model.dart';
import 'package:my_portofolio/utils/extensions/iteration_ext.dart';
import 'package:my_portofolio/utils/functions/insert_color_func.dart';
import 'package:url_launcher/url_launcher.dart';

class CardProjectTabletMobileWidget extends StatelessWidget {
  final bool isCurrentlyShow;
  final ProjectModel workModel;
  const CardProjectTabletMobileWidget({
    super.key,
    required this.workModel,
    required this.isCurrentlyShow,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          boxShadow: AppShadows.md,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24).w,
              color: InsertColorFunc.call(
                darkTheme: Theme.of(context).colorScheme.secondaryContainer,
                lightTheme: AppColorsLight.gray100,
                context: context,
              ),
              child: AspectRatio(
                aspectRatio: 800 / 520,
                child: Image.network(
                  workModel.urlImage,
                  fit: BoxFit.contain,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                padding: const EdgeInsets.all(24).w,
                color: InsertColorFunc.call(
                  darkTheme: AppColorsDark.gray100,
                  lightTheme: Colors.white,
                  context: context,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      workModel.title,
                      style: AppTextStyleTabletMobile.subtitleSemiBold,
                    ),
                    24.verticalSpace,
                    Text(
                      workModel.desc,
                      overflow: isCurrentlyShow ? null : TextOverflow.ellipsis,
                      style: AppTextStyles.body2NormalAll,
                    ),
                    12.verticalSpace,
                    Wrap(
                      runSpacing: 8.h,
                      spacing: 8.w,
                      children: workModel.skills
                          .extMapIndexed(
                            (data, index) => Container(
                              padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 20)
                                  .dg,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Text(
                                data,
                                style: AppTextStyles.body3MediumAll,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (workModel.urlGithub.isNotEmpty)
                          IconButton(
                            onPressed: () {
                              launchUrl(
                                Uri.parse(workModel.urlGithub),
                              );
                            },
                            icon: SvgPicture.asset(
                              SvgAssetsConst.icGithub,
                              height: 24.w,
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
                            splashRadius: 32.h,
                            padding: const EdgeInsets.all(10).w,
                          ),
                        if (workModel.urlPlaystore.isNotEmpty)
                          IconButton(
                            onPressed: () {
                              launchUrl(
                                Uri.parse(workModel.urlPlaystore),
                              );
                            },
                            icon: SvgPicture.asset(
                              SvgAssetsConst.icPlaystore,
                              height: 24.w,
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
                            splashRadius: 32.h,
                            padding: const EdgeInsets.all(10).w,
                          ),
                        if (workModel.urlYoutube.isNotEmpty)
                          IconButton(
                            onPressed: () {
                              launchUrl(
                                Uri.parse(workModel.urlYoutube),
                              );
                            },
                            icon: SvgPicture.asset(
                              SvgAssetsConst.icYoutube,
                              height: 24.w,
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
                            splashRadius: 32.h,
                            padding: const EdgeInsets.all(10).w,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
