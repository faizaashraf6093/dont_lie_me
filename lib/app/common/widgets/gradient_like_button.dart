import 'package:dont_lie_me/app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class GradientLikeButton extends StatelessWidget {
  const GradientLikeButton({
    super.key,
    required this.isLiked,
    this.onTap,
  });

  final bool isLiked;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 55,
        height: 62,
        child: CustomPaint(
          painter: _HexagonPainter(isGradient: isLiked),
          child: const Center(
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}

class _HexagonPainter extends CustomPainter {
  final bool isGradient;

  _HexagonPainter({required this.isGradient});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..style = PaintingStyle.fill;

    if (isGradient) {
      paint.shader = AppColors.gradient
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    } else {
      paint.color = Colors.grey.shade300;
    }

    final Path path = Path();
    final double w = size.width;
    final double h = size.height;

    path.moveTo(w * 0.5, 0);
    path.lineTo(w, h * 0.25);
    path.lineTo(w, h * 0.75);
    path.lineTo(w * 0.5, h);
    path.lineTo(0, h * 0.75);
    path.lineTo(0, h * 0.25);
    path.close();

    canvas.drawPath(path, paint); // Draw the hexagon
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
