import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class ExtracurricularSection extends StatelessWidget {
  const ExtracurricularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
             color: Colors.teal.withValues(alpha: 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Extra-Curricular Activities"),
          const SizedBox(height: 20),
          const Text(
            "• Member of technical committee CodeTantra, contributed to event planning and tech outreach.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          const Text(
            "• Volunteered with Clean Malad Initiative. Designed and deployed Project Recycle-it, a mobile app with 120+ users promoting sustainability and environmental awareness.",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
