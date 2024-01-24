import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_shadows.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/shared/models/project_model.dart';
import 'package:my_portofolio/shared/widgets/card_project_tablet_mobile_widget.dart';
import 'package:my_portofolio/utils/functions/insert_color_func.dart';

class CardProjectDesktopWidget extends StatelessWidget {
  final bool isCurrentlyShow;
  final ProjectModel workModel;
  const CardProjectDesktopWidget({
    super.key,
    required this.workModel,
    required this.isCurrentlyShow,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          boxShadow: AppShadows.md,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.all(48),
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
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(48).r,
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
                      style: AppTextStyleDesktop.subtitleSemiBold,
                    ),
                    14.verticalSpace,
                    Text(
                      workModel.desc,
                      overflow: isCurrentlyShow ? null : TextOverflow.ellipsis,
                      style: AppTextStyles.body2NormalAll,
                    ),
                    12.verticalSpace,
                    ProjectSkillsComponent(workModel: workModel),
                    const Spacer(),
                    ProjectLinksComponent(workModel: workModel),
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
