import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/shared/models/skill_model.dart';
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
      padding: EdgeInsets.symmetric(
        horizontal: 80.w,
        vertical: 70.h,
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
            style: AppTextStyleDesktop.subtitleNormal,
          ),
          SizedBox(
            height: 48.h,
          ),
          GridView.builder(
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
        ],
      ),
    );
  }
}
