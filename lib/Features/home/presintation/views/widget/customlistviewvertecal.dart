import 'package:book_app/Features/home/presintation/views/widget/listviewoneandmore.dart';
import 'package:flutter/material.dart';

class customlistviewvertecal extends StatelessWidget {
  const customlistviewvertecal({super.key});

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
              child: listviewoneandmore(),
            );
          }),
    );
  }
}
