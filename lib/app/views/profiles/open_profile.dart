import 'package:dont_lie_me/app/common/widgets/app_bar.dart';
import 'package:dont_lie_me/app/common/widgets/bottom_navigation_bar.dart';
import 'package:dont_lie_me/app/common/widgets/gradient_elevated_button.dart';
import 'package:dont_lie_me/app/controllers/main_controller.dart';
import 'package:dont_lie_me/app/models/profile_models.dart';
import 'package:dont_lie_me/app/utils/constants/app_colors.dart';
import 'package:dont_lie_me/app/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/card_variations.dart';
import '../../common/widgets/gallery.dart';

class OpenProfileScreen extends GetView<MainController> {
  static const route = '/open-profile';
  const OpenProfileScreen({super.key, required this.profile});

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = List.filled(5, profile.image);

    return Scaffold(
      appBar: const CommonAppBar(
        showBackButton: true,
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              runSpacing: 16,
              children: [
                OpenProfileCard(
                  profile: profile,
                  isLiked: controller.isProfileLiked(profile.id),
                  onTap: () => controller.toggleLike(profile.id),
                ),
                Card(
                  color: AppColors.lightblue,
                  elevation: 2,
                  child: ListTile(
                    tileColor: AppColors.lightblue,
                    title: const Text('About Me'),
                    subtitle: Text(profile.bio),
                    titleTextStyle: AppStyles.heading,
                    subtitleTextStyle: AppStyles.bio,
                  ),
                ),
                ImageGallery(imageUrls: imageUrls),
                GradientElevatedButton(
                  text: 'Report Profile',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CBottomNavigationBar(),
    );
  }
}
