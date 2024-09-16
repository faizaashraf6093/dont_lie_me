import 'package:dont_lie_me/app/controllers/navigation_controller.dart';
import 'package:dont_lie_me/app/views/home/home.dart';
import 'package:get/get.dart';

class GetPageList {
  static List<GetPage> pages = [
    GetPage(
      name: HomeScreen.route,
      page: () => const HomeScreen(),
      binding: BindingsBuilder(() => Get.lazyPut(() => NavigationController())),
    ),
  ];
}
