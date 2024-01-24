import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/shared/models/skill_model.dart';
import 'package:my_portofolio/utils/functions/get_responsive_value_func.dart';
import 'package:my_portofolio/utils/functions/insert_color_func.dart';

class SkillsDesktopComponent extends StatelessWidget {
  final List<SkillModel> listData;
  const SkillsDesktopComponent({
    super.key,
    required this.listData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
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
              'Skills',
              style: AppTextStyles.body3MediumAll,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'The skills, tools and technologies I am really good at:',
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
          GetResponsiveValueFunc.call<Widget>(
            context,
            mobile: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 74 / 86,
                crossAxisCount: 3,
                crossAxisSpacing: 34.w,
              ),
              itemBuilder: (context, index) {
                var skill = listData[index];
                return Column(
                  children: [
                    SizedBox(
                      height: 80.h,
                      child: Image.asset(
                        skill.urlImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      skill.name,
                      style: AppTextStyleTabletMobile.body1Normal,
                    ),
                  ],
                );
              },
            ),
            tablet: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 120.w / 120.h,
                crossAxisCount: 4,
                mainAxisSpacing: 20.h,
              ),
              itemBuilder: (context, index) {
                var skill = listData[index];
                return Column(
                  children: [
                    Image.asset(
                      skill.urlImage,
                      width: 100.w,
                      height: 64.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      skill.name,
                      style: AppTextStyleTabletMobile.body1Normal,
                    ),
                  ],
                );
              },
            ),
            desktop: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 120.w / 105.h,
                crossAxisCount: 6,
              ),
              itemBuilder: (context, index) {
                var skill = listData[index];
                return SizedBox(
                  width: 120.w,
                  height: 105.h,
                  child: Column(
                    children: [
                      Image.asset(
                        skill.urlImage,
                        width: 100.w,
                        height: 64.w,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        skill.name,
                        style: AppTextStyleDesktop.body1Normal,
                      ),
                    ],
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
