import 'package:flutter/material.dart';
import 'package:dgi_website/components/page_components/dgi_banner.dart';
import 'package:dgi_website/components/page_components/dgi_navigation_bar.dart';
import 'package:dgi_website/components/page_components/dgi_footer.dart';

class PageLayout extends StatelessWidget {
  final Widget child;

  const PageLayout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // Banner
                      const DGIBanner(),
                      // Navigation Bar
                      const DGINavigationBar(),
                      // Page Content
                      child,
                    ],
                  ),
                  // Footer
                  const DGIFooter(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
