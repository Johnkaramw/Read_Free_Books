import 'package:book_app/Features/home/presintation/views/widget/Feature_ListView_Horezent.dart';
import 'package:book_app/Features/home/presintation/views/widget/custome_Appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        customAppBaar(),
        FeatureListViewHorezent(),
      ],
    );
  }
}

