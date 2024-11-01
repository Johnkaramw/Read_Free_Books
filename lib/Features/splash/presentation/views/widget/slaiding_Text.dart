import 'package:flutter/material.dart';

class slaidingText extends StatelessWidget {
  const slaidingText({
    super.key,
    required this.slaidshow,
  });

  final Animation<Offset> slaidshow;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slaidshow,
      builder: (context,_) {
        return SlideTransition(
          position: slaidshow,
          child: const Text(
            'Read Free Book',
            style: TextStyle(fontSize: 19),
            textAlign: TextAlign.center,
          ),
        );
      }
    );
  }
}