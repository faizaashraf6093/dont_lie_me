import 'package:dont_lie_me/app/common/widgets/app_bar.dart';
import 'package:dont_lie_me/app/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/bottom_navigation_bar.dart';

class HomeScreen extends GetView<NavigationController> {
  static const route = '/home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Obx(
        () => controller.pages[controller.selectedIndex.value],
      ),
      bottomNavigationBar: const CBottomNavigationBar(),
    );
  }
}
