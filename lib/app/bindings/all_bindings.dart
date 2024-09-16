import 'package:dont_lie_me/app/controllers/main_controller.dart';
import 'package:dont_lie_me/app/controllers/navigation_controller.dart';
import 'package:get/get.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => MainController());
  }
}
