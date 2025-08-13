import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/animated_card.dart';
import '../widgets/flip_card.dart';

class CertificationsSection extends StatelessWidget {
  const CertificationsSection({super.key});

  Widget tealBack(BuildContext context, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(14),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: Text(
        "Certification:\n$title",
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  final List<Map<String, dynamic>> certifications = const [
    {
      "title":
          "Mastering Android App Development with Kotlin (XML + Compose) - Coursera"
    },
    {"title": "Flutter Course for Beginners - FreeCodeCamp"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Certifications"),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: certifications.map((cert) {
              return FlipCard(
                width: 400,
                height: 140,
                front: AnimatedCard(
                  width: 400,
                  child: ListTile(
                    title: Text(cert['title']),
                  ),
                ),
                back: tealBack(context, cert['title']),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
