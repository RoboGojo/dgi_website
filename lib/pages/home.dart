import 'package:flutter/material.dart';
import 'package:dgi_website/components/page_components/page_layout.dart';
import 'package:dgi_website/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      child: _buildBodyContent(),
    );
  }

  Widget _buildBodyContent() {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              // About the Fraternity Section
              _buildInfoSection(
                title: 'About Us',
                description:
                    'Delta Gamma Iota’s Alpha Chapter was established on December 5th, 1965 at Vincennes University. The Gamma Chapter was established at Ball State University on February 7th, 1998. Since then, we have grown into a brotherhood that values brotherhood, diligence, and integrity. Our members are dedicated to making a positive impact on their communities while fostering lifelong friendships.',
                hasImage: true,
              ),
              const SizedBox(height: 40),
              // Cardinal Beliefs Section
              _buildInfoSection(
                title: 'Why join?',
                description:
                    'Delta Gamma Iota has low dues of \$40 a month. In our hearts, brotherhood should not be something that is paid for, but fostered in good relationships internally. We believe in serving our communities and making a difference in Muncie. We very highly value community service, philanthropy, and servant leadership.',
                hasImage: false,
              ),
              const SizedBox(height: 40),
              // Philanthropy Section
              _buildInfoSection(
                title: 'Philanthropy & Service',
                description:
                    'Giving back to our community is at the heart of what we do. Through various initiatives and partnerships, we make a meaningful impact in the lives of those around us.',
                hasImage: false,
              ),
              const SizedBox(height: 40),
              // Events Section
              _buildInfoSection(
                title: 'Brotherhood & Events',
                description:
                    'From social gatherings to professional development workshops, our events strengthen the bonds between brothers and create lasting memories.',
                hasImage: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection({
    required String title,
    required String description,
    required bool hasImage,
  }) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (hasImage)
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    'lib/assets/dgi_crest.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.textSecondary,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.maroon,
                foregroundColor: AppColors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text(
                'Learn More',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}