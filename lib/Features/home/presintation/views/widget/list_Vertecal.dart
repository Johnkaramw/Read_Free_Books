 import 'package:book_app/Features/home/presintation/views/widget/one_vertical.dart';
import 'package:flutter/material.dart';

class listVertecal extends StatelessWidget {
  const listVertecal({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child:  oneVertecal(),
            );
          }),
    );
  }
}