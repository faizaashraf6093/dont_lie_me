import 'package:dont_lie_me/app/controllers/main_controller.dart';
import 'package:dont_lie_me/app/models/profile_models.dart';
import 'package:dont_lie_me/app/views/profiles/open_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/profile_card.dart';

class ProfilesScreen extends GetView<MainController> {
  const ProfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(
        () => Column(
          children: profiles.map((profile) {
            return GestureDetector(
              onTap: () => Get.to(
                () => OpenProfileScreen(profile: profile),
              ),
              child: ProfileCard(
                image: profile.image,
                isLiked: controller.isProfileLiked(profile.id),
                title: profile.name,
                subtitle: profile.subtitle,
                location: profile.location,
                bio: profile.bio,
                tags: profile.tags,
                onTap: () {
                  controller.toggleLike(profile.id);
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
