import 'package:dont_lie_me/app/utils/constants/app_images.dart';
import 'package:flutter/material.dart';

import 'gradient_border_badge.dart';
import 'image_viewer.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;

  const CommonAppBar({
    super.key,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        centerTitle: true,
        leading: showBackButton
            ? IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new),
              )
            : IconButton(
                onPressed: () => Navigator.pop(context),
                icon: CommonImageView(svgPath: AppImages.menu),
              ),
        title: CommonImageView(
          svgPath: AppImages.logo,
          width: 60,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CommonImageView(svgPath: AppImages.filter),
          ),
          IconButton(
            onPressed: () {},
            icon: const GradientCircleWithBadge(
              imageUrl: AppImages.profile,
              badgeNumber: 1,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
