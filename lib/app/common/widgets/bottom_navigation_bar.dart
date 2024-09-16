import 'package:dont_lie_me/app/common/widgets/image_viewer.dart';
import 'package:dont_lie_me/app/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_images.dart';

class CBottomNavigationBar extends GetView<NavigationController> {
  const CBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        currentIndex: controller.selectedIndex.value,
        showSelectedLabels: false,
        onTap: controller.changeTabIndex,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: CommonImageView(
              svgPath: AppImages.home,
              color: controller.selectedIndex.value == 0
                  ? AppColors.primary
                  : AppColors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Saved',
            icon: CommonImageView(
              svgPath: AppImages.like,
              color: controller.selectedIndex.value == 1
                  ? AppColors.primary
                  : AppColors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: CommonImageView(
              svgPath: AppImages.chat,
              color: controller.selectedIndex.value == 2
                  ? AppColors.primary
                  : AppColors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Info',
            icon: CommonImageView(
              svgPath: AppImages.info,
              color: controller.selectedIndex.value == 3
                  ? AppColors.primary
                  : AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
