import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class ResponsiveFlipCard extends StatefulWidget {
  final Widget front;
  final Widget back;
  final FlipDirection direction;

  const ResponsiveFlipCard({
    super.key,
    required this.front,
    required this.back,
    this.direction = FlipDirection.HORIZONTAL,
  });

  @override
  State<ResponsiveFlipCard> createState() => _ResponsiveFlipCardState();
}

class _ResponsiveFlipCardState extends State<ResponsiveFlipCard> {
  final GlobalKey<FlipCardState> flipKey = GlobalKey<FlipCardState>();

  bool get isTouchDevice {
    final width = MediaQuery.of(context).size.width;
    return width < 800; // you can tweak breakpoint if needed
  }

  @override
  Widget build(BuildContext context) {
    final flipCard = FlipCard(
      key: flipKey,
      flipOnTouch: false, // manual flip control
      direction: widget.direction,
      front: widget.front,
      back: widget.back,
    );

    return isTouchDevice
        ? GestureDetector(
            onTap: () => flipKey.currentState?.toggleCard(),
            child: flipCard,
          )
        : MouseRegion(
            onEnter: (_) => flipKey.currentState?.toggleCard(),
            onExit: (_) => flipKey.currentState?.toggleCard(),
            child: flipCard,
          );
  }
}
