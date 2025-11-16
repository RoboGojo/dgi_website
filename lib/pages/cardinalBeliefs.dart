import 'package:flutter/material.dart';
import 'package:dgi_website/components/page_components/page_layout.dart';
import 'package:dgi_website/theme/app_colors.dart';

class CardinalBeliefsPage extends StatelessWidget {
  const CardinalBeliefsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              _buildBeliefCard(
                greekLetter: 'Δ',
                belief: 'Diligence',
                quote: '"Careful and persistent work or effort"',
                description:
                    'As college students, it is ever prevalent that we are diligent in all of the work we do. We believe in diligence in all aspects of life, but especially in college. We came to Ball State to get a degree. Our passion for our fraternity is as strong as the blood that runs through our veins, but our stewardship for academic excellence is an even stronger belief.',
              ),
              const SizedBox(height: 40),
              _buildBeliefCard(
                greekLetter: 'Γ',
                belief: 'Brotherhood',
                quote:
                    '"The feeling of kinship with and closeness to a group of people"',
                description:
                    'We believe that no fraternity has bounds without true close connection. We do not believe that fraternities can exist without truly being a family and that is a main focus for us, providing a space for people to feel at home and safe.',
              ),
              const SizedBox(height: 40),
              _buildBeliefCard(
                greekLetter: 'Ι',
                belief: 'Integrity',
                quote:
                    '"The quality of being honest and having strong moral principles; moral uprightness."',
                description:
                    'Integrity to our fraternity is the value of being an honest man who does his best to be a good samaritan in life and make a difference in the world for the better with his actions or demeanor.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBeliefCard({
    required String greekLetter,
    required String belief,
    required String quote,
    required String description,
  }) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
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
          children: [
            // Greek Letter
            Text(
              greekLetter,
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: AppColors.maroon,
              ),
            ),
            const SizedBox(height: 20),
            // Belief Title
            Text(
              belief,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 20),
            // Quote
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.backgroundLight,
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  left: BorderSide(
                    color: AppColors.maroon,
                    width: 4,
                  ),
                ),
              ),
              child: Text(
                quote,
                style: const TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: AppColors.textSecondary,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 25),
            // Description
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.textSecondary,
                height: 1.8,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
