import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Theme.of(context).primaryColor,
        letterSpacing: 1.5,
      ),
    );
  }
}
