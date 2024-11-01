import 'package:book_app/Features/home/presintation/views/widget/custome_Appbar.dart';
import 'package:book_app/core/help/Assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        customAppBaar(),
      ],
    );
  }
}

