import 'package:dont_lie_me/app/models/profile_models.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_images.dart';
import '../../utils/constants/app_styles.dart';
import 'common_chips.dart';
import 'gradient_like_button.dart';
import 'image_viewer.dart';

class OpenProfileCard extends StatelessWidget {
  const OpenProfileCard({
    super.key,
    required this.profile,
    required this.isLiked,
    required this.onTap,
  });

  final Profile profile;
  final bool isLiked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.lightblue,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonImageView(
              radius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              url: profile.image,
              width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(profile.name, style: AppStyles.titleBlack),
                    Text(
                      profile.subtitle,
                      style: AppStyles.bio,
                    ),
                    const SizedBox(height: 10),
                    Text(profile.location, style: AppStyles.bio),
                    const SizedBox(height: 5)
                  ],
                ),
                GradientLikeButton(
                  isLiked: isLiked,
                  onTap: onTap,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 10,
              children: profile.tags
                  .map((label) => CommonChip(label: label))
                  .toList(),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                CommonImageView(svgPath: AppImages.share),
                CommonImageView(svgPath: AppImages.facebook),
                CommonImageView(svgPath: AppImages.instagram),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
