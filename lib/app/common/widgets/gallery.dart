import 'package:dont_lie_me/app/utils/constants/app_colors.dart';
import 'package:dont_lie_me/app/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';

import 'image_viewer.dart';

class ImageGallery extends StatelessWidget {
  const ImageGallery({
    super.key,
    required this.imageUrls,
  });

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Gallery',
              style: AppStyles.heading,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See All',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.primary,
                  decorationThickness: 2,
                ),
              ),
            ),
          ],
        ),
        Wrap(
          spacing: 5.0,
          runSpacing: 8.0,
          alignment: WrapAlignment.center,
          children: imageUrls.asMap().entries.map((entry) {
            int index = entry.key;
            String url = entry.value;
            double width = (MediaQuery.of(context).size.width / 2) - 20;
            if (index >= 2) {
              width = (MediaQuery.of(context).size.width / 3) - 16;
            }
            return SizedBox(
              width: width,
              child: CommonImageView(
                url: url,
                radius: BorderRadius.circular(10),
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
