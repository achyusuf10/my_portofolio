import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/configs/themes/app_colors.dart';
import 'package:my_portofolio/configs/themes/app_shadows.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/shared/models/project_model.dart';
import 'package:my_portofolio/shared/widgets/card_project_widget.dart';
import 'package:my_portofolio/utils/extensions/iteration_ext.dart';
import 'package:my_portofolio/utils/functions/insert_color_func.dart';

class ProjectDesktopComponent extends StatefulWidget {
  final List<ProjectModel> listData;
  const ProjectDesktopComponent({super.key, required this.listData});

  @override
  State<ProjectDesktopComponent> createState() =>
      _ProjectDesktopComponentState();
}

class _ProjectDesktopComponentState extends State<ProjectDesktopComponent> {
  final RxInt _curCarrouselIndex = RxInt(0);

  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      padding: EdgeInsets.symmetric(
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
              'Projects',
              style: AppTextStyles.body3MediumAll,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Some of the projects I have built:',
            style: AppTextStyleDesktop.subtitleNormal,
          ),
          SizedBox(
            height: 40.h,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CarouselSlider.builder(
                itemCount: widget.listData.length,
                itemBuilder: (context, index, _) {
                  return Obx(
                    () => CardProjectWidget(
                      workModel: widget.listData[index],
                      isCurrentlyShow: _curCarrouselIndex.value == index,
                    ),
                  );
                },
                carouselController: _carouselController,
                options: CarouselOptions(
                  onPageChanged: (index, _) {
                    _curCarrouselIndex.value = index;
                  },
                  aspectRatio: 1280 / 400,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                ),
              ),
              Row(
                children: [
                  30.horizontalSpace,
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primaryContainer,
                      border: Border.all(
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                        width: 1.5,
                      ),
                      boxShadow: AppShadows.md,
                    ),
                    child: IconButton(
                      onPressed: () {
                        _carouselController.previousPage();
                      },
                      icon: Icon(
                        Icons.chevron_left_rounded,
                        size: 40.h,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primaryContainer,
                      border: Border.all(
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                        width: 1.5,
                      ),
                      boxShadow: AppShadows.md,
                    ),
                    child: IconButton(
                      onPressed: () {
                        _carouselController.nextPage();
                      },
                      icon: Icon(
                        Icons.chevron_right_rounded,
                        size: 40.h,
                      ),
                    ),
                  ),
                  30.horizontalSpace,
                ],
              )
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...widget.listData
                  .extMapIndexed(
                    (data, index) => Obx(
                      () => Container(
                        width: 12.w,
                        height: 12.w,
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        decoration: BoxDecoration(
                          color: _curCarrouselIndex.value == index
                              ? Theme.of(context).primaryColor
                              : Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
