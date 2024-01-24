import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_shadows.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/shared/models/experience_model.dart';
import 'package:my_portofolio/utils/extensions/iteration_ext.dart';
import 'package:my_portofolio/utils/functions/get_responsive_value_func.dart';
import 'package:my_portofolio/utils/functions/insert_color_func.dart';

class CardExperienceTabletMobileWidget extends StatelessWidget {
  final ExperienceModel data;
  const CardExperienceTabletMobileWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      padding: EdgeInsets.all(32.h),
      decoration: BoxDecoration(
        color: InsertColorFunc.call(
          darkTheme: AppColorsDark.gray100,
          lightTheme: AppColorsLight.grayDefault,
          context: context,
        ),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: AppShadows.md,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            data.urlImageCompany,
            width: 150.w,
            fit: BoxFit.fitWidth,
          ),
          Text(
            data.title,
            style: GetResponsiveValueFunc.call(
              context,
              mobile: AppTextStyleTabletMobile.subtitleSemiBold,
              tablet: AppTextStyleTabletMobile.subtitleSemiBold,
              desktop: AppTextStyleDesktop.subtitleSemiBold,
            ),
          ),
          SizedBox(
            height: 20.h.w,
          ),
          Text(
            data.date,
            style: AppTextStyles.body2NormalAll,
          ),
          Text(
            data.companyName,
            style: AppTextStyles.body3NormalAll,
          ),
          Text(
            data.workType,
            style: AppTextStyles.body3NormalAll,
          ),
          SizedBox(
            height: 24.h,
          ),
          ...data.descriptions
              .extMapIndexed(
                (desc, i) => Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '•',
                        style: AppTextStyles.body2NormalAll,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Expanded(
                        child: Text(
                          desc,
                          style: AppTextStyles.body2NormalAll,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
          SizedBox(
            width: 48.w,
          ),
        ],
      ),
    );
  }
}
