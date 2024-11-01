import 'package:book_app/Features/home/presintation/views/widget/CustomitemHomeview.dart';
import 'package:book_app/Features/home/presintation/views/widget/custome_Appbar.dart';
import 'package:book_app/core/help/Assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        customAppBaar(),
        CustomitemHomeview(),
      ],
    );
  }
}

