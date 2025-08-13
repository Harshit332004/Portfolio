import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/section_title.dart';
import '../widgets/animated_card.dart';
import '../widgets/flip_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  Widget tealBack(BuildContext context, Map<String, dynamic> project) {
    return Container(
      height: 280, // match FlipCard height
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project['name'],
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                project['fullDescription'],
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Key Features:",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              ...List<Widget>.from(
                (project['features'] as List<String>).map(
                  (feature) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      "• $feature",
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              if (project['github'] != null)
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      final Uri url = Uri.parse(project['github']);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url,
                            mode: LaunchMode.externalApplication);
                      }
                    },
                    icon: const Icon(Icons.code, size: 16),
                    label: const Text("View on GitHub",
                        style: TextStyle(fontSize: 12)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Theme.of(context).primaryColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> projects = const [
    {
      "name": "Cryptozz",
      "stack": "Jetpack Compose, REST API, Firebase",
      "description": [
        "Real-time crypto tracking",
        "REST APIs + Firebase Firestore",
        "MVVM architecture with coroutines"
      ],
      "github": "https://github.com/Harshit332004/cryptozz",
      "fullDescription":
          "A virtual cryptocurrency portfolio tracker built with Jetpack Compose that lets you explore and manage a mock portfolio using real-time data from the crypto market. Leverages Coingecko's API and provides insights into over 20 major cryptocurrencies with an intuitive UI.",
      "features": [
        "Google Sign-In",
        "Live crypto tracking",
        "Interactive charts",
        "Favorite coins management"
      ]
    },
    {
      "name": "Expense Tracker",
      "stack": "Flutter, Node.js, MongoDB, Firebase Auth",
      "description": [
        "Cross-platform app with receipt logging",
        "Secure login via Firebase Auth",
        "Conversational AI interface"
      ],
      "github": "https://github.com/Harshit332004/Expense_Tracker",
      "fullDescription":
          "A Flutter-based Expense Tracker app with Firebase Authentication and a Node.js + MongoDB backend. Offers real-time income/expense tracking, receipt uploads, data analytics, and PDF report export.",
      "features": [
        "Receipt image logging",
        "Data analytics",
        "PDF export",
        "Secure authentication"
      ]
    },
    {
      "name": "ValoScans",
      "stack": "Flutter, REST API, Firebase Auth",
      "description": [
        "Match analytics dashboard",
        "Hybrid data fetching with Riot API"
      ],
      "github": null,
      "fullDescription":
          "Building a dashboard for match analytics, win/loss trends, and real-time MMR estimates using Riot API. Implemented hybrid data-fetching using official APIs and web scrapers for unsupported endpoints.",
      "features": [
        "Match analytics",
        "Win/loss trends",
        "MMR estimates",
        "Hybrid data fetching"
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Projects"),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: projects.map((project) {
              return Tooltip(
                message: "Click to see more details about ${project['name']}",
                child: FlipCard(
                  width: 320,
                  height: 280,
                  front: AnimatedCard(
                    width: 320,
                    child: Container(
                      height: 280, // match FlipCard height
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(project['name'],
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 6),
                          Text(project['stack'],
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey.shade700)),
                          const SizedBox(height: 12),
                          ...List<Widget>.from(
                            (project['description'] as List<String>)
                                .map((desc) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 6),
                                      child: Text("• $desc"),
                                    )),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Click to see more details",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey.shade600,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Icon(
                                Icons.flip_to_back,
                                size: 16,
                                color: Colors.grey.shade600,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  back: tealBack(context, project),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
