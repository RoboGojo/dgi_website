import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:dgi_website/routing/routes.dart';
import 'package:dgi_website/theme/app_colors.dart';

class DGINavigationBar extends StatelessWidget {
  const DGINavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navItems = [
      {'label': 'Home', 'route': Routes.home},
      {'label': 'Cardinal Beliefs', 'route': Routes.cardinalBeliefs},
      {'label': 'Philanthropy', 'route': null},
      {'label': 'Executive Council', 'route': null},
      {'label': 'Shop', 'route': null},
      {'label': 'Dues & Donations', 'route': null},
      {'label': 'Login/Logout', 'route': null},
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.darkGray,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 30,
        runSpacing: 10,
        children: navItems.map((item) {
          return InkWell(
            onTap: () {
              final route = item['route'] as String?;
              if (route != null) {
                context.go(route);
              }
            },
            child: Text(
              item['label'] as String,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
