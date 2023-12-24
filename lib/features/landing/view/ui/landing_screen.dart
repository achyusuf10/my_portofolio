import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/features/landing/controllers/landing_controller.dart';
import 'package:my_portofolio/features/landing/view/components/desktop/navbar_button_component.dart';
import 'package:my_portofolio/shared/widgets/responsive_widget.dart';
import 'package:my_portofolio/utils/loggers/app_logger.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LandingController());
    return Scaffold(
      body: ResponsiveWidget(
        mobile: ScrollablePositionedList.builder(
          itemPositionsListener: controller.itemPositionsListener,
          itemScrollController: controller.itemScrollController,
          scrollOffsetController: controller.scrollOffsetController,
          itemCount: controller.getWidgetDesktop.length,
          itemBuilder: (context, index) => controller.getWidgetDesktop[index],
        ),
        tablet: const Text('Tablets'),
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
