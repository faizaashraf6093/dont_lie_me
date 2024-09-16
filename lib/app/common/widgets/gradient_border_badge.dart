import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';

class GradientCircleWithBadge extends StatelessWidget {
  final String imageUrl;
  final int badgeNumber;

  const GradientCircleWithBadge({
    super.key,
    required this.imageUrl,
    required this.badgeNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppColors.gradient,
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(imageUrl),
            ),
          ),
        ),
        Positioned(
          top: -3,
          right: -1,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: AppColors.primary,
            child: Text(
              badgeNumber.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
