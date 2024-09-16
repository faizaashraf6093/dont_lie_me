import 'package:dont_lie_me/app/common/widgets/common_chips.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_images.dart';
import '../../utils/constants/app_styles.dart';
import 'gradient_like_button.dart';
import 'image_viewer.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.location,
    required this.bio,
    required this.tags,
    this.onTap,
    required this.image,
    required this.isLiked,
  });

  final String title;
  final String subtitle;
  final String location;
  final String bio;
  final String image;
  final bool isLiked;
  final List<String> tags;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        color: AppColors.lightblue,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CommonImageView(
                  radius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  url: image,
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: AppStyles.title),
                        Text(
                          subtitle,
                          style: AppStyles.subTitle,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            CommonImageView(
                                svgPath: AppImages.location, width: 12),
                            const SizedBox(width: 4),
                            Text(location, style: AppStyles.subTitle),
                          ],
                        ),
                        const SizedBox(height: 5)
                      ],
                    ),
                    GradientLikeButton(
                      isLiked: isLiked,
                      onTap: onTap,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    bio,
                    style: AppStyles.bio,
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 10,
                    children: tags
                        .map(
                          (label) => CommonChip(label: label),
                        )
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
          ],
        ),
      ),
    );
  }
}
