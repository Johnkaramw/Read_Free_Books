import 'package:book_app/core/help/Image.dart';
import 'package:flutter/material.dart';

class oneHorezent extends StatelessWidget {
  const oneHorezent({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AsseetData.test,
            ),
          ),
        ),
      ),
    );
  }
}
