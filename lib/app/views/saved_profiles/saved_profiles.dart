import 'package:dont_lie_me/app/utils/constants/app_strings.dart';
import 'package:dont_lie_me/app/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/image_card.dart';
import '../../controllers/main_controller.dart';
import '../../models/profile_models.dart';

class SavedProfilesScreen extends GetView<MainController> {
  const SavedProfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        List<Profile> likedProfiles = profiles
            .where((profile) => controller.isProfileLiked(profile.id))
            .toList();

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppStrings.myMatches,
                style: AppStyles.heading,
              ),
              const Text(
                AppStrings.matchesExpires,
                style: AppStyles.bio,
              ),
              Expanded(
                child: likedProfiles.isEmpty
                    ? const Center(child: Text(AppStrings.noLikes))
                    : GridView.builder(
                        padding: const EdgeInsets.all(8.0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0,
                          childAspectRatio: 0.65,
                        ),
                        itemCount: likedProfiles.length,
                        itemBuilder: (context, index) {
                          final profile = likedProfiles[index];
                          return ImageCard(
                            image: profile.image,
                            title: profile.name,
                            subtitle: profile.location,
                          );
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}
