import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingSection extends StatelessWidget {
  const LandingSection({super.key});

  Future<void> _launch(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    }
  }

  Widget contactButton({
    required BuildContext context,
    required String label,
    required IconData icon,
    required String url,
    Color? bgColor,
    Color? textColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: bgColor ?? Theme.of(context).colorScheme.secondary.withOpacity(0.12),
          foregroundColor: textColor ?? Theme.of(context).primaryColor,
          minimumSize: const Size(30, 36),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(color: Theme.of(context).primaryColor.withOpacity(0.2)),
          ),
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        icon: Icon(icon, size: 18),
        label: Text(label),
        onPressed: () => _launch(url),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor.withOpacity(0.08),
            Theme.of(context).colorScheme.secondary.withOpacity(0.08),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "HARSHIT GYANCHANDANI",
            style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Aspiring Flutter & Full-Stack Software Engineer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade800,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 28),
          Wrap(
            spacing: 8,
            children: [

              contactButton(
                context: context,
                label: "Email",
                icon: Icons.email,
                url: "mailto:harshitgyanchandani@gmail.com",
                bgColor: const Color.fromARGB(255, 242, 175, 155),
                textColor: const Color.fromARGB(255, 236, 108, 69),
              ),
              contactButton(
                context: context,
                label: "GitHub",
                icon: Icons.code,
                url: "https://github.com/Harshit332004",
                bgColor: Colors.black12,
                textColor: Colors.black87,
              ),
              contactButton(
                context: context,
                label: "LinkedIn",
                icon: Icons.business,
                url: "https://www.linkedin.com/in/harshit-gyanchandani-981975377/",
                bgColor: Colors.blue.shade50,
                textColor: Colors.blue.shade800,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
