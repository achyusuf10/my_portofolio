import 'package:get/get.dart';
import 'package:my_portofolio/configs/routes/app_routes.dart';
import 'package:my_portofolio/features/landing/view/ui/landing_screen.dart';

class AppPages {
  static List<GetPage> pages() {
    return [
      GetPage(
        name: AppRoutes.landingScreen,
        page: () => const LandingScreen(),
      ),
    ];
  }
}
