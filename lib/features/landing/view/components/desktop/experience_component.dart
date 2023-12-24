import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/shared/models/experience_model.dart';
import 'package:my_portofolio/shared/widgets/card_experience_widget.dart';
import 'package:my_portofolio/utils/functions/insert_color_func.dart';

class ExperienceDesktopComponent extends StatelessWidget {
  final List<ExperienceModel> listData;
  const ExperienceDesktopComponent({
    super.key,
    required this.listData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.primaryContainer,
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
              'Experience',
              style: AppTextStyles.body3MediumAll,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Here is a quick summary of my most recent experiences:',
            style: AppTextStyleDesktop.subtitleNormal,
          ),
          SizedBox(
            height: 48.h,
          ),
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(
              height: 48.h,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listData.length,
            itemBuilder: (context, index) {
              var experience = listData[index];
              return CardExperienceWidget(
                data: experience,
              );
            },
          ),
        ],
      ),
    );
  }
}
