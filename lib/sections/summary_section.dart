import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Professional Summary"),
          const SizedBox(height: 16),
          Text(
            "Aspiring software engineer specializing in Flutter app development with a strong foundation in full-stack technologies (Node.js, Firebase, MongoDB). Experienced in building scalable, production-ready mobile apps with clean architecture. Comfortable working across both cross-platform and native Android (Jetpack Compose) stacks. Passionate about building impactful, user-friendly apps through efficient, modern mobile development.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade900,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
