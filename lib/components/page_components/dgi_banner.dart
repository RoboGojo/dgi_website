import 'package:flutter/material.dart';
import 'package:dgi_website/theme/app_colors.dart';

class DGIBanner extends StatelessWidget {
  const DGIBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      decoration: const BoxDecoration(
        color: AppColors.maroon,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 1965
          Text(
            '1965',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w300,
              color: AppColors.white,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(width: 40),
          // Greek Letters (ΔΓΙ)
          Stack(
            children: [
              Text(
                'ΔΓΙ',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = AppColors.black,
                ),
              ),
              Text(
                'ΔΓΙ',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          const SizedBox(width: 40),
          // 1998
          Text(
            '1998',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w300,
              color: AppColors.white,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}
