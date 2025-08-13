import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.shade700,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Center(
        child: Text(
          "© 2025 Harshit Gyanchandani. All rights reserved.",
                     style: TextStyle(color: Colors.white.withValues(alpha: 0.8)),
        ),
      ),
    );
  }
}
