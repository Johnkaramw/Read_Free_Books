import 'package:book_app/core/help/Assets.dart';
import 'package:flutter/material.dart';

class CustomitemHomeview extends StatelessWidget {
  const CustomitemHomeview({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
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
