import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  Widget skillCategory(String title, List<String> skills) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: skills
                .map((skill) => Chip(
                      label: Text(skill),
                      backgroundColor: Colors.teal.shade50,
                      labelStyle: TextStyle(color: Colors.teal.shade900),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
             color: Colors.teal.withValues(alpha: 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Skills"),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              skillCategory("Languages", ["Python", "Dart", "C", "Kotlin", "Java"]),
              const SizedBox(width: 20),
              skillCategory("Frameworks & Tools",
                  ["Flutter SDK", "Jetpack Compose", "Node.js", "REST API", "Firebase", "Git"]),
              const SizedBox(width: 20),
              skillCategory("Databases", ["MongoDB", "MySQL", "SQLite (Room)"]),
            ],
          ),
        ],
      ),
    );
  }
}
