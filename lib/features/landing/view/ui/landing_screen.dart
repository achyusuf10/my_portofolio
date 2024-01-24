import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/configs/themes/app_text_styles.dart';
import 'package:my_portofolio/features/landing/controllers/landing_controller.dart';
import 'package:my_portofolio/features/landing/view/components/navbar_button_component.dart';
import 'package:my_portofolio/features/landing/view/components/side_bar_mobile_component.dart';
import 'package:my_portofolio/utils/functions/get_responsive_value_func.dart';
import 'package:my_portofolio/utils/loggers/app_logger.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LandingController());
    return Scaffold(
      appBar: GetResponsiveValueFunc.call<PreferredSizeWidget?>(
        context,
        mobile: AppBar(
          scrolledUnderElevation: 0.3,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text(
            '<Yu-Dev/>',
            style: AppTextStyleMobile.headingH1SemiBold.copyWith(
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        tablet: null,
        desktop: null,
      ),
      drawer: GetResponsiveValueFunc.call<Widget?>(
        context,
        mobile: SideBarMobileComponent(
          onTap: (index) {
            controller.onTapNavbar(index);
            Get.back();
          },
        ),
        tablet: null,
        desktop: null,
      ),
      body: GetResponsiveValueFunc.call<Widget>(
        context,
        mobile: Column(
          children: [
            Container(),
            Expanded(
              child: ScrollablePositionedList.builder(
                itemPositionsListener: controller.itemPositionsListener,
                itemScrollController: controller.itemScrollController,
                scrollOffsetController: controller.scrollOffsetController,
                itemCount: controller.getWidgetDesktop.length,
                itemBuilder: (context, index) =>
                    controller.getWidgetDesktop[index],
              ),
            ),
          ],
        ),
        tablet: Column(
          children: [
            Obx(
              () => NavbarButtonDesktopComponent(
                isScrolled: controller.isScrolled.value,
                onTap: (index) {
                  controller.onTapNavbar(index);
                },
              ),
            ),
            Expanded(
              child: NotificationListener(
                onNotification: (ScrollNotification notification) {
                  if (controller.isScrolled.isTrue) {
                    if (notification.metrics.pixels > 20) return true;
                    controller.isScrolled.value = false;
                  } else {
                    if (notification.metrics.pixels < 20) return true;
                    controller.isScrolled.value = true;
                  }
                  AppLogger.call(
                    'ScrollNotification: ${notification.metrics.pixels}',
                  );

                  return true;
                },
                child: ScrollablePositionedList.builder(
                  itemPositionsListener: controller.itemPositionsListener,
                  itemScrollController: controller.itemScrollController,
                  scrollOffsetController: controller.scrollOffsetController,
                  itemCount: controller.getWidgetDesktop.length,
                  itemBuilder: (context, index) =>
                      controller.getWidgetDesktop[index],
                ),
              ),
            )
          ],
        ),
        desktop: Column(
          children: [
            Obx(
              () => NavbarButtonDesktopComponent(
                isScrolled: controller.isScrolled.value,
                onTap: (index) {
                  controller.onTapNavbar(index);
                },
              ),
            ),
            Expanded(
              child: NotificationListener(
                onNotification: (ScrollNotification notification) {
                  if (controller.isScrolled.isTrue) {
                    if (notification.metrics.pixels > 20) return true;
                    controller.isScrolled.value = false;
                  } else {
                    if (notification.metrics.pixels < 20) return true;
                    controller.isScrolled.value = true;
                  }
                  AppLogger.call(
                    'ScrollNotification: ${notification.metrics.pixels}',
                  );

                  return true;
                },
                child: ScrollablePositionedList.builder(
                  itemPositionsListener: controller.itemPositionsListener,
                  itemScrollController: controller.itemScrollController,
                  scrollOffsetController: controller.scrollOffsetController,
                  itemCount: controller.getWidgetDesktop.length,
                  itemBuilder: (context, index) =>
                      controller.getWidgetDesktop[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
