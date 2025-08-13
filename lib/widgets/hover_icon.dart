import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HoverIcon extends StatefulWidget {
  final IconData icon;
  final String tooltip;
  final String url;

  const HoverIcon({
    super.key,
    required this.icon,
    required this.tooltip,
    required this.url,
  });

  @override
  State<HoverIcon> createState() => _HoverIconState();
}

class _HoverIconState extends State<HoverIcon> {
  bool isHovered = false;

  Future<void> _launch() async {
    final Uri uri = Uri.parse(widget.url);
    try {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (e) {
      // For web, fallback: open in new tab
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: _launch,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Tooltip(
              message: widget.tooltip,
              child: Icon(
                widget.icon,
                color: isHovered
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).primaryColor,
                size: 28,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
