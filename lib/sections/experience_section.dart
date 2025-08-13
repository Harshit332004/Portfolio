import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/animated_card.dart';
import '../widgets/responsive_flip_card.dart'; // <-- use our new widget here

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  Widget tealBack(BuildContext context) {
    return Container(
      height: 240, // match card height
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Working of the project 📄",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 12),
              Text(
                "• Built a cross-platform mobile app using Flutter (Dart) and implemented Provider for efficient state management.",
                style: TextStyle(color: Colors.white, fontSize: 13, height: 1.3),
              ),
              SizedBox(height: 6),
              Text(
                "• Integrated Firebase Authentication for secure user login, Firebase Storage for media handling, and a Node.js backend for API services.",
                style: TextStyle(color: Colors.white, fontSize: 13, height: 1.3),
              ),
              SizedBox(height: 6),
              Text(
                "• Added SQLite local database for offline persistence and optimized app performance for a smooth user experience.",
                style: TextStyle(color: Colors.white, fontSize: 13, height: 1.3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      color: Colors.teal.withOpacity(0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Experience"),
          const SizedBox(height: 20),

          ResponsiveFlipCard( // <-- swapped from FlipCard
            front: AnimatedCard(
              width: 500,
              child: Container(
                height: 240, // match card height
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Mobile App Dev Apprentice — Project Recycle-it",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "• Collaborated on a recycling app to assist local communities with waste segregation."),
                    Text(
                        "• Implemented core features under mentorship, contributing to sustainability goals."),
                    Text(
                        "• Acknowledged by local government; adopted by 120+ users to streamline waste management."),
                  ],
                ),
              ),
            ),
            back: tealBack(context),
          ),
        ],
      ),
    );
  }
}
